 
cmake_minimum_required(VERSION 2.8)

project(libDttSP_project)

include_directories(
# any directories needed by the sources of the library
/home/florin/code/DttSP
)

set(SOURCES am_demod.c dttspagc.c keyerio.c resample.c splitfields.c banal.c
fastrig.c lmadf.c resampleF.c spottone.c bufvec.c filter.c meter.c ringb.c thunk.c
correctIQ.c fm_demod.c metermon.c sdr.c update.c cwtones.c graphiceq.c noiseblanker.c 
sdrexport.c window.c cxops.c oscillator.c spectrum.c dcblock.c keyer.c ovsv.c ringb.c speechproc.c spottone.c wscompand.c winmain.c)

set(HEADERS am_demod.h dttspagc.h keyerio.h resample.h splitfields.h banal.h
common.h complex.h datatypes.h defs.h fromsys.h fftw3_fix.h local.h fastrig.h lmadf.h resampleF.h spottone.h bufvec.h filter.h meter.h ringb.h thunk.h
correctIQ.h fm_demod.h metermon.h update.h cwtones.h graphiceq.h noiseblanker.h 
sdrexport.h window.h cxops.h oscillator.h spectrum.h dcblock.h keyer.h ovsv.h ringb.h speechproc.h spottone.h wscompand.h winmain.h)

add_library(DttSP SHARED ${SOURCES})

target_link_libraries(DttSP pthread fftw3f gsl m)

install(TARGETS DttSP DESTINATION lib)
