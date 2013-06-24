#!/bin/sh
make clean
make tar
cp -r debian unison-listen-0.1.2/
cd unison-listen-0.1.2/ && debuild -us -uc
