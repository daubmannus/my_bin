#!/bin/bash
if [ -z "$1" ]; then echo "Path(s) required!"; exit; fi
if [ -z "$2" ]; then set -- "$1" "."; fi

diff <(cut -f1,1 -d' ' "$1".md5 | sort) <(cut -f1,1 -d' ' "$2".md5 | sort)
