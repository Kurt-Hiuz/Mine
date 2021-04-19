#!/bin/sh
DoExitAsm ()
{ echo "An error occurred while assembling $1"; exit 1; }
DoExitLink ()
{ echo "An error occurred while linking $1"; exit 1; }
echo Linking /media/pavel/SIMTIP11/ЛБ1/LB1
OFS=$IFS
IFS="
"
/usr/bin/ld -b elf64-x86-64 -m elf_x86_64  --dynamic-linker=/lib64/ld-linux-x86-64.so.2     -L. -o '/media/pavel/SIMTIP11/ЛБ1/LB1' -T '/media/pavel/SIMTIP11/ЛБ1/link.res' -e _start
if [ $? != 0 ]; then DoExitLink /media/pavel/SIMTIP11/ЛБ1/LB1; fi
IFS=$OFS
