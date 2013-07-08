#!/bin/sh
make clean
make tar
cp -r debian unison-listen-0.1.3/
cd unison-listen-0.1.3/ && debuild -us -uc
