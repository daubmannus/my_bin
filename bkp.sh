#!/bin/bash

for PARAM in "$@"; do
	cp -pr "$PARAM" "$PARAM".bkp$(stat -c %Y "$PARAM")~
done
