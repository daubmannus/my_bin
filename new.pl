#!/usr/bin/perl -w
use strict;
use warnings;
use utf8;
binmode(STDOUT,':utf8');
binmode(STDERR,':utf8');

use Data::Dump 'dump';
use feature 'say';
sub decode_locale { use Encode; use Encode::Locale; map { $_ = decode(locale => $_) } @_ }

# BEGIN {push @INC, '/home/theo/bin/incl'}
# require 'debug.pl';
##########################################

# my @params;
# foreach (@ARGV) {
	# push @params, decode_locale($_);
# }
# $,=' '; print @params, "\n";

# my $txt = join('', <STDIN>); utf8::decode($txt);
# my @lines = split "\n", $txt;

