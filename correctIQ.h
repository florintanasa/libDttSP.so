#ifndef _correctIQ_h
#define _correctIQ_h

#include <bufvec.h>
typedef int BOOL;
typedef struct _iqstate
{
  REAL phase, gain;
} *IQ, iqstate;

extern IQ newCorrectIQ (REAL phase, REAL gain);
extern void delCorrectIQ (IQ iq);
extern void correctIQ (CXB sigbuf, IQ iq);
extern BOOL isTx;
extern int rxCorrEna;

#endif
