# libDttSP.so
The lib ported from windows.
The work is in progress.
I fixed only SetOsc() and SetMode() functions

To install modify the path /home/florin/git/libDttSP.so  from CMakeLists.txt with the path were you clone. After that in the path you clone:
mkdir build
cd build
cmake ..
make
sudo make install
sudo ldconfig
