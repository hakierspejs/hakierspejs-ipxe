#!/bin/bash

echo $PWD
cp /work/entry/main.ipxe .
sleep 5
make bin/ipxe.iso EMBED=main.ipxe
cp bin/ipxe.iso /work/entry
