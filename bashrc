#!/bin/bash

PERL5DIR=find . -type f -name "AptPkg.pm" | sed -r -n "s/\.\/(.+perl5\/[^/]+).+/\1/p"
PERL5DIR= $PERL5DIR || "usr/lib/x86_64-linux-gnu/perl5/5.36"

export APT_CONFIG=/home/user/notroot/apt.conf
export PERL5LIB=/home/user/notroot/$PERL5DIR:$PERL5LIB

DIR="$( cd "$( dirname "${BASH_SOURCE[0]-$0}" )" && pwd )"
for ROOT in $DIR $DIR/deb
do
export PATH="$DIR:$DIR/bin:$DIR/sbin:$ROOT/usr/bin:$ROOT/usr/sbin:$PATH:$ROOT/usr/games"
export CPATH="$ROOT/include:$ROOT/usr/include:$CPATH"
export LD_LIBRARY_PATH="$ROOT/usr/lib:$ROOT/lib:$ROOT/usr/lib/x86_64-linux-gnu:$ROOT/lib/x86_64-linux-gnu:$LD_LIBRARY_PATH"
export LIBRARY_PATH="$ROOT/usr/lib:$ROOT/lib:$ROOT/usr/lib/x86_64-linux-gnu:$ROOT/lib/x86_64-linux-gnu:$LIBRARY_PATH"
export PKG_CONFIG_PATH="$ROOT/usr/share/pkgconfig:$ROOT/usr/lib/pkgconfig:$ROOT/usr/lib/x86_64-linux-gnu/pkgconfig:$PKG_CONFIG_PATH"
done
