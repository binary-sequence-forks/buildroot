#!/bin/sh
set -ue
clear

prefix=/usr
exec_prefix=${prefix}
bindir=${exec_prefix}/bin
datarootdir=${prefix}/share
datadir=${datarootdir}

if [ $# -eq 0 ]; then
    boot_mode='wozmon'
else
    boot_mode=$1
fi

extra_args=''
if [ "${boot_mode}" == 'wozmon' ]; then
    extra_args='-cassette n'
elif [ "${boot_mode}" == 'cassette' ]; then
    extra_args=''
elif [ "${boot_mode}" == 'basic' ]; then
    extra_args="-rom ${datadir}/froot-1/wozbasic.rom"
elif [ "${boot_mode}" == 'hamurabi' ]; then
    extra_args="-rom ${datadir}/froot-1/wozbasic.rom"
elif [ "${boot_mode}" == 'apple30th' ]; then
    extra_args="-rom ${datadir}/froot-1/apple30th.rom,${datadir}/froot-1/apple30th-vector.rom"
fi

${bindir}/froot1 -baud 1000 -cols 40 $extra_args
