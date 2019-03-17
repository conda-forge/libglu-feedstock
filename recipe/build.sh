#!/bin/bash

autoreconf -vfi

./configure  --prefix=$PREFIX ##--disable-static
make
make install
