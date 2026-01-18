#!/usr/bin/env bash

# Accomodate both linux windows mingw locations
MINGW=/mingw64
if [ -z "$MSYSCON" ]; then
	MINGW=/opt$MINGW
else
	CMAKE_OPTS="$CMAKE_OPTS -DLMMS_BUILD_MSYS=1"
fi

export PATH=$MINGW/bin:$PATH
cmake -S $PWD/.. -DMINGW_PREFIX=$MINGW $CMAKE_OPTS -DWIN64=1 -DLMMS_BUILD_WIN32=1 $@
