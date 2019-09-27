//
// DRAM_Testers for 4464, 44256
// by cloudree@naver.com
//
//  4464      RAS CAS W     D0  D1  D2  D3    A0  A1  A2  A3  A4  A5  A6  A7
//  44256     RAS CAS W     D0  D1  D2  D3    A0  A1  A2  A3  A4  A5  A6  A7  A8    G-LED R-LED   SW
//  Arduino   D6  D5  D7    D2  D3  D4  A4    D8  D9  D10 D11 D12 D13 A0  A1  A2    A3    A5      A6
//

/* Simple DRAM tester
 * Chris Osborn <fozztexx@fozztexx.com>
 * http://insentricity.com/a.cl/252
 */

#include <Arduino.h>

#define _DEBUG
#define DATA_BITS         4
#define MAX_ADDR_BITS     10

int DATA[ DATA_BITS ] = { 2, 3, 4, A4 };

#define CAS             5
#define RAS             6
#define WE              7

#define G_LED           A3
#define R_LED		        A5
#define SW              A6

bool  g_is44256 = false;

inline void writePrepare()
{
    for( int i = 0; i < DATA_BITS; i ++ )
        pinMode( DATA[i], OUTPUT );
}

inline void writeData( int value )
{
    digitalWrite( DATA[0], value & 1 );
    digitalWrite( DATA[1], value & 2 );
    digitalWrite( DATA[2], value & 4 );
    digitalWrite( DATA[3], value & 8 );
}

inline void readPrepare()
{
    for( int i = 0; i < DATA_BITS; i ++ )
        pinMode( DATA[i], INPUT );
}

inline int readData()
{
    return digitalRead( DATA[0] )
       | ( digitalRead( DATA[1] ) << 1 )
       | ( digitalRead( DATA[2] ) << 2 )
       | ( digitalRead( DATA[3] ) << 3 );
}

inline int getAddrSize()
{
    return g_is44256 ? 9 : 7;
}

inline void setAddress( int row, int col )
{
    PORTB = row & 0x3f;
    PORTC = (PORTC & 0xf0) | (row >> 6) & 0x0f;
    digitalWrite(RAS, LOW);
    digitalWrite(WE, LOW);

    PORTB = col & 0x3f;
    PORTC = (PORTC & 0xf0) | (col >> 6) & 0x0f;
    digitalWrite(CAS, LOW);
    digitalWrite(WE, HIGH);
   
    digitalWrite(CAS, HIGH);
    digitalWrite(RAS, HIGH);
}

inline int getAddress( int row, int col )
{
    PORTB = row & 0x3f;
    PORTC = (PORTC & 0xf0) | (row >> 6) & 0x0f;
    digitalWrite(RAS, LOW);
  
    PORTB = col & 0x3f;
    PORTC = (PORTC & 0xf0) | (col >> 6) & 0x0f;
    digitalWrite(CAS, LOW);

    int val = readData( );
   
    digitalWrite(CAS, HIGH);
    digitalWrite(RAS, HIGH);
      
    return val;
}

void result( bool success )
{
    digitalWrite( G_LED, success ? HIGH : LOW );
    digitalWrite( R_LED, success ? LOW : HIGH );
#ifdef _DEBUG      
    Serial.println( success ? "\nSuccess" : "\nFailed" );
#endif
    while( 1 ) ;
}

void setup()
{  
#ifdef _DEBUG  
    Serial.begin( 57600 );
    Serial.println( "DRAM Tester by cloudree@naver.com");
#endif
      
    pinMode(CAS, OUTPUT);
    pinMode(RAS, OUTPUT);
    pinMode(WE, OUTPUT);
    digitalWrite(CAS, HIGH);
    digitalWrite(RAS, HIGH);
    digitalWrite(WE, HIGH);
  
    /* 10 is max address bits, even if chip is smaller */
    int mask = (1 << MAX_ADDR_BITS) - 1; 
    DDRB = mask & 0x3f;
    mask >>= 6;
    DDRC = mask & 0x0f;
    
    pinMode( G_LED, OUTPUT );
    pinMode( R_LED, OUTPUT );  
    digitalWrite( G_LED, LOW );
    digitalWrite( R_LED, LOW );

    pinMode( SW, INPUT );
    g_is44256 = analogRead( SW ) > 500;
    Serial.println( g_is44256 ? "Checking 44256" : "Checking 4464");
}

void loop()
{
    int count = 0;
    byte vals[] = { 0x5, 0xa };
    
    for( int col = 0; col < (1 << getAddrSize()); col ++ )
    {
        for( int row = 0; row < (1 << getAddrSize()); row ++ )
        {
            for( int idx = 0; idx < sizeof(vals); idx ++ )
            {
                if ( millis() % 1000 > 500 ) digitalWrite( G_LED, HIGH );
                byte val = vals[idx];
                writePrepare();
                writeData( val );
                setAddress( row, col );
                writeData( ~val );
                digitalWrite( G_LED, LOW );

                readPrepare();
                int ret = getAddress( row, col );
                if( ret != val )
                {
#ifdef _DEBUG                  
                    Serial.println( "Error, row=" + String(row) + ", col=" + String(col) + " : " + String(val) + "/" + String(ret) );
#endif                    
                    result( false );
                }
            }
        }
#ifdef _DEBUG        
        Serial.print(".");
#endif

        if( ++count > 64 ) 
        {
#ifdef _DEBUG          
            Serial.println("");
#endif            
            count = 0;
        }
    }
    result( true );
}
