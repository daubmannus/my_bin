#!/bin/bash

for PARAM in "$@"; do
	cp -a "$PARAM" "$PARAM".bkp$(stat -c %Y "$PARAM")~
done
