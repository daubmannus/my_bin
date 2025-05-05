#!/usr/bin/perl -p
s[\\#(?:([0-7]{1,3})|(.))] [defined($1) ? chr(oct($1)) : $2]eg;

# fixes escaped octals (\#321 like in rsync strerr) unicode characters in file
# solution from 
# https://unix.stackexchange.com/questions/216312/convert-an-ascii-file-with-octal-escapes-for-utf-8-codes-to-utf-8
#
# input: STDIN, output: STDOUT, i.e. use it in pipe, like
# $ cat bad.file | utf8fix8.pl >good.file
