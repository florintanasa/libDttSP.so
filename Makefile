CFLAGS = -fPIC -O3 -Wall -Wno-unused-function -Wunused-variable -g -I.
SHAREDLIBS = -L ../lib -lDttSP -ljack -lpthread -lfftw3f -lgsl -lm 
sharedlibname = libDttSP.so

OBJ =	am_demod.o\
   	dttspagc.o\
   	keyerio.o\
       	resample.o\
    	splitfields.o\
	banal.o\
      	fastrig.o\
    	lmadf.o\
        resampleF.o\
   	spottone.o\
	bufvec.o\
     	filter.o\
     	meter.o\
        ringb.o\
       	thunk.o\
	correctIQ.o\
  	fm_demod.o\
   	metermon.o\
      	sdr.o\
        update.o\
	cwtones.o\
    	graphiceq.o\
  	noiseblanker.o\
  	sdrexport.o\
   	window.o\
	cxops.o\
       	oscillator.o\
    	spectrum.o\
	dcblock.o\
    	keyer.o\
      	ovsv.o\
        speechproc.o\
  	wscompand.o\
    	winmain.o

all:	obj sharedlib

sdr-core-shared:	sdr-main.o
	$(CC) -o sdr-core sdr-main.o $(SHAREDLIBS)


$(OBJ): sdrexport.h

obj:	$(OBJ)

clean:
	/bin/rm -f *.o ../bin/sdr-core $(sharedlibname)

sharedlib:	$(OBJ)
	$(CC) -shared -o $(sharedlibname) $(OBJ)
#	mv libDttSP.so ../lib

install:	sdr-core-shared
	mv sdr-core ../bin
