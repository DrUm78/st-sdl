# st version
VERSION = 0.3

# Customize below to fit your system

# paths
PREFIX = /opt/FunKey-sdk-2.0.0
MANPREFIX = ${PREFIX}/share/man

# includes and libs
INCS = -I.  -I/opt/FunKey-sdk-2.0.0/arm-funkey-linux-musleabihf/sysroot/usr/include/SDL -D_GNU_SOURCE=1 -D_REENTRANT
LIBS = -lc -lutil -L/opt/FunKey-sdk-2.0.0/arm-funkey-linux-musleabihf/sysroot/usr/lib -lSDL -lpthread

# flags
CPPFLAGS = -DVERSION=\"${VERSION}\"  -fPIC
CFLAGS += -g -Wall ${INCS} ${CPPFLAGS} -DFUNKEY_S -fPIC -std=gnu11 
LDFLAGS += -g ${LIBS} -lSDL

# compiler and linker
CC = /opt/FunKey-sdk-2.0.0/bin/arm-funkey-linux-musleabihf-gcc
