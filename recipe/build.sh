#!/bin/bash

export CFLAGS="$CFLAGS -I${PREFIX}/include"
export LDFLAGS="$LDFLAGS -L${PREFIX}/lib"
if [ "${SHORT_OS_STR}" == "Darwin" ]; then
  export CFLAGS="$CFLAGS -framework OpenGL"
  export LDFLAGS="$LDFLAGS -framework OpenGL"
fi
./configure  --prefix=$PREFIX ##--disable-static
make
make install
