#!/bin/bash

GCC_VERSION=4.8

export PATH="/app/vendor/R/bin:/app/.apt/usr/bin:/app/.apt/usr/sbin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:$PATH"
export LIBRARY_PATH="/app/.apt/usr/lib/x86_64-linux-gnu:/app/.apt/usr/lib:/usr/lib/x86_64-linux-gnu:/usr/lib:$LIBRARY_PATH"
export LD_LIBRARY_PATH="/app/.apt/usr/lib/x86_64-linux-gnu/:/app/.apt/usr/lib/gcc/x86_64-linux-gnu/$GCC_VERSION:/usr/lib/gcc/x86_64-linux-gnu/$GCC_VERSION:/app/.apt/usr/lib/libblas:/app/.apt/usr/lib/lapack:$LD_LIBRARY_PATH"
export LDFLAGS="-L/app/.apt/usr/lib/x86_64-linux-gnu -L/app/.apt/usr/lib/gcc/x86_64-linux-gnu/$GCC_VERSION -L/app/.apt/usr/lib/libblas -L/app/.apt/usr/lib/lapack $LDFLAGS"
export PKG_CONFIG_PATH="/app/vendor/R/lib/pkgconfig:/app/.apt/usr/lib/x86_64-linux-gnu/pkgconfig:/app/.apt/usr/lib/pkgconfig:$PKG_CONFIG_PATH"
export INCLUDE_PATH="/app/.apt/usr/include:$INCLUDE_PATH"
export CPATH="$INCLUDE_PATH"
export CPPPATH="$INCLUDE_PATH"
export R_INCLUDE="/app/vendor/R/lib64/R/include"
export CPPFLAGS="-I/app/vendor/glibc-$GLIBC_VERSION/string/ -I/app/vendor/glibc-$GLIBC_VERSION/time -I/usr/include/x86_64-linux-gnu/sys -I/usr/include/x86_64-linux-gnu/gnu"

ln -s /usr/lib/x86_64-linux-gnu/libreadline.so $R_HOME/lib64/libreadline.so.6 2>&1
ln -s /usr/lib/x86_64-linux-gnu/libmpfr.so.4.1.2 $R_HOME/lib64/libmpfr.so.3 2>&1
ln -s /usr/lib/x86_64-linux-gnu/libgmp.so.10.1.3 $R_HOME/lib64/libgmp.so.2 2>&1
ln -s /usr/lib/x86_64-linux-gnu/crti.o $R_HOME/lib64/crti.o 2>&1
