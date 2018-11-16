#! /bin/sh

d=$(dirname $1)
f=$(basename $1)
n=${f%.*}
p=$HOME/.guix-profile/share/texmf-dist/metapost/base
ln -s $d/$f $p/plain.mp .
mpost $n
rm -f ./plain.mp ./$f
00 ${n}_1.mps
