#!/usr/bin/perl -w
use strict;
use warnings;
use utf8;
binmode(STDOUT,':utf8');
binmode(STDERR,':utf8');

while(<>){
	utf8::decode($_);
	print;
}

# fixes (spoiled by perl one-liner) utf8 characters in file
# input: STDIN, output: STDOUT, i.e. use it in pipe, like
# $ cat bad.file | utf8fix.pl >good.file
