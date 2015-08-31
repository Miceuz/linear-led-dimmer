#include <avr/io.h>
#include <inttypes.h>
#include <util/delay.h>
#include <avr/pgmspace.h>
#include <avr/interrupt.h>



const uint8_t pwm[] PROGMEM ={
0,
1,
2,
3,
3,
4,
5,
6,
7,
8,
9,
10,
11,
12,
13,
14,
15,
16,
17,
18,
19,
20,
21,
22,
23,
24,
25,
25,
26,
27,
28,
29,
30,
31,
32,
33,
34,
35,
36,
36,
37,
38,
39,
40,
41,
42,
43,
44,
45,
45,
46,
47,
48,
49,
50,
51,
52,
53,
54,
55,
55,
56,
57,
58,
59,
60,
61,
62,
63,
65,
66,
67,
68,
69,
70,
71,
72,
73,
74,
75,
77,
78,
79,
80,
81,
82,
84,
85,
86,
87,
88,
90,
91,
92,
93,
95,
96,
97,
99,
100,
101,
103,
104,
105,
107,
108,
109,
111,
112,
114,
115,
117,
118,
119,
121,
122,
124,
125,
127,
128,
130,
131,
133,
135,
136,
138,
139,
141,
142,
144,
146,
147,
149,
151,
152,
154,
156,
157,
159,
161,
162,
164,
166,
168,
169,
171,
173,
175,
176,
178,
180,
182,
184,
186,
187,
189,
191,
193,
195,
197,
199,
201,
203,
205,
207,
209,
211,
213,
215,
217,
219,
221,
223,
225,
227,
229,
231,
233,
235,
237,
239,
241,
244,
246,
248,
250,
252,
255};

inline static void pwmInit() {
	OCR0A = 0;
	DDRB |= _BV(PB0);
	TCCR0A |= _BV(WGM00) | _BV(WGM01) | _BV(COM0A1);
	TCCR0B |= _BV(CS00);
}

inline static void pwmSet(uint8_t level) {
	OCR0A = level;
	if(0 != level) {
		TCCR0B |= _BV(CS00);
	} else {
		TCCR0B = 0;
	}
}

inline static void encoderInit() {
	DDRB &= ~_BV(PB1);
	DDRB &= ~_BV(PB2);

}

#define ENC_A PB2
#define ENC_B PB1
#define ENC_PORT PINB

int8_t encoderRead() {
	static int8_t enc_states[] = {0,-1,1,0,1,0,0,-1,-1,0,0,1,0,1,-1,0};
//	static int8_t enc_states[] = {0,0,0,0,1,0,0,-1,0,0,0,0,0,0,0,0};
	static uint8_t old_AB = 0;
	old_AB <<= 2;                   //remember previous state
	uint8_t t = ((( 0 == (ENC_PORT & _BV(ENC_A))) << 1) | (0 == (ENC_PORT & _BV(ENC_B))));

	old_AB |= t;  //add current state
	return ( enc_states[( old_AB & 0x0f )]);
}

volatile uint32_t millis = 0;

uint8_t targetPwm = 0;
uint8_t currentPwm = 0;

ISR(TIMER1_OVF_vect) {
	if(0 == (millis % 5)) {
		if(targetPwm > currentPwm && currentPwm < 254) {
			currentPwm++;
		} else if(targetPwm < currentPwm && currentPwm > 0) {
			currentPwm--;
		}
		pwmSet(currentPwm);
	}
	millis++;
}

void timerInit() {
	TIMSK |= _BV(TOIE1);
	TCCR1 |= _BV(CS12) | _BV(CS11);

}

void main() {
	timerInit();
	sei();
	pwmInit();
	int16_t i = 0;
	uint32_t lastDetentTimestamp;
	pwmSet(0);
	int8_t encoderPulses = 0;
	while(1) {
		encoderPulses += encoderRead();

		if( encoderPulses > 3 || encoderPulses < -3 ) {
			int8_t encoderStep = encoderPulses / 4;

			if(millis - lastDetentTimestamp < 20) {
				i+= encoderStep*10;
			} else if(millis - lastDetentTimestamp < 30) {
				i+= encoderStep*5;
			} else if(millis - lastDetentTimestamp < 40) {
				i+= encoderStep*2;
			} else {
				i+= encoderStep;
			}
			if(i > 187) {
				i = 187;
			} 
			if(i < 0) {
				i = 0;
			}
			targetPwm = (uint8_t) pgm_read_byte(&(pwm[i]));
			lastDetentTimestamp = millis;
			//_delay_ms(1);
			encoderPulses = 0;
		}
//		_delay_ms(5);
	}
}