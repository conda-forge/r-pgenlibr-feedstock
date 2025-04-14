#!/bin/bash
export DISABLE_AUTOBREW=1

sed -i 's/PKG_CPPFLAGS =/PKG_CPPFLAGS = -flax-vector-conversions/' src/Makevars.in

${R} CMD INSTALL --build . ${R_ARGS}
