#!perl -w

use strict;
use warnings;

use utf8;
binmode(STDOUT,':utf8');
binmode(STDERR,':utf8');

use Encode 'encode';

use feature 'say';

use Data::Dump qw(dump);
####################################

chomp(my @list = <STDIN>);
@list = (@ARGV, @list); # with arguments, then with pipe

while (my $url = pop @list) {
	$url = safeWarchName( $url );
	$url = fixLength( $url );
	
	print "$url\n";
}

####################################
sub safeWarchName {
	my $url = $_[0];
	
	$url =~ s/%([A-Fa-f\d]{2})/chr hex $1/eg; # %aa%bb -> actual chars
	utf8::decode($url);
	$url =~ s/[^[:print:]]+//g; # remove ascii control chars
	$url =~ s/\{/{lbrace}/g; $url =~ s/\}(?<!{lbrace})/{rbrace}/g; # escape {}
	$url =~ s|^([a-z]+)://(.+)$|$2\{~$1\}|i; # move protocol name to end of string
	$url =~ s/%/{percnt}/g;
	$url =~ s|/|%|g;
	$url =~ s/:/{colon}/g;
	$url =~ s/\*/{ast}/g;
	$url =~ s/\?/{quest}/g;
	$url =~ s/\\/{bsol}/g;
	$url =~ s/"/{quot}/g;
	$url =~ s/</{lt}/g;
	$url =~ s/>/{gt}/g;
	$url =~ s/\|/{vert}/g;

	return $url;
}

sub fixLength {
		# >255 bytes* -> "125 bytes {...}125 bytes"
		# если на стыке остаются куски {мнемо}, удалять.
		# если есть {...} -- проверять .src.url, при необходимости добавлять {..1} .. {999}

	my $url = $_[0];

	if( length(encode('UTF-8', $url)) > 255 ) {
		my $left = substr $url, 0, 125; # in chars for now
		my $right = substr $url, -125;
		while( length(encode('UTF-8', $left)) > 125 ) { chop $left }
		while( length(encode('UTF-8', $right)) > 125 ) { $right = substr $right, 1 }
		$left =~ s/{[^}]+$//; $right =~ s/^[^{]+}//; # если на стыке остаются куски {мнемо}, удалять.

		$url = $left.'{...}'.$right;
	}
	return $url;
}