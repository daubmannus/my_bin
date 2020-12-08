#!/bin/bash
if [ -z "$1" ]; then set -- "."; fi
for param in "$@"
do
  find "$(readlink -e "$param")" -type d -exec sh -c \
  'cd "{}"; md5sum * | perl-win -pe '"'"'s/^([0-9a-f]+) \*/$1  /i'"'"' | dos2unix >.md5' \;
done
