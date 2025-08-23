# st version
VERSION = 0.9.3

# paths
PREFIX = /usr/local
MANPREFIX = $(PREFIX)/share/man

X11INC = /usr/include/X11
X11LIB = /usr/include/X11

PKG_CONFIG = pkg-config

# Includes
INCS = -I$(X11INC) \
       `$(PKG_CONFIG) --cflags fontconfig` \
       `$(PKG_CONFIG) --cflags freetype2`

# Libs
LIBS = -L$(X11LIB) -lm -lrt -lX11 -lutil -lXft -lXrender\
       `$(PKG_CONFIG) --libs fontconfig` \
       `$(PKG_CONFIG) --libs freetype2`

# Custom flags
# STCFLAGS = -Wall -Wextra -ggdb $(INCS) -DVERSION=\"$(VERSION)\" -D_XOPEN_SOURCE=600 -O2
STCFLAGS = $(INCS) -DVERSION=\"$(VERSION)\" -D_XOPEN_SOURCE=600 -O2
STLDFLAGS = $(LIBS)

# original flags
# STCPPFLAGS = -DVERSION=\"$(VERSION)\" -D_XOPEN_SOURCE=600
# STCFLAGS = $(INCS) $(STCPPFLAGS) $(CPPFLAGS) $(CFLAGS)
# STLDFLAGS = $(LIBS) $(LDFLAGS)


# OpenBSD:
#CPPFLAGS = -DVERSION=\"$(VERSION)\" -D_XOPEN_SOURCE=600 -D_BSD_SOURCE
#LIBS = -L$(X11LIB) -lm -lX11 -lutil -lXft \
#       `$(PKG_CONFIG) --libs fontconfig` \
#       `$(PKG_CONFIG) --libs freetype2`
#MANPREFIX = ${PREFIX}/man

# compiler and linker
# CC = c99
