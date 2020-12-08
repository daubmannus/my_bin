#!/usr/bin/perl -w
use strict;
use warnings;
use utf8;
binmode(STDOUT,':utf8');
binmode(STDERR,':utf8');

use charnames ();
my $range = 0x10FFFF;

unless($ARGV[0]) {die "see regex classes contents.\nusage example:\n$0 \\\\d \n"}
my $class = qr($ARGV[0]);
warn "$class\n\n";

for(my $i = 0; $i<=$range; $i++) {
	my $s = chr($i);
	if( $s =~ $class ) {
		$s =~ s/\p{XPosixCntrl}//g;
		printf "%x \"%s\" %s\n", $i, $s, charnames::viacode($i);
	}
}
