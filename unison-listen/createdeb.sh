#!/bin/sh
make clean
make tar
cp -r debian unison-listen-0.1.1/
cd unison-listen-0.1.1/ && debuild -us -uc
