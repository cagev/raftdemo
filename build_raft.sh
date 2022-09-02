#!/bin/bash 


cd raft 
autoreconf -i
export LIBRAFT_TRACE=1
#./configure --enable-example --enable-debug=yes  --prefix=`pwd`/../bin  
./configure --enable-debug=yes  --prefix=`pwd`/../bin  
make -j4 
make install 
cd .. 

