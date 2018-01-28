#!/usr/bin/perl -w

# prepare list of md5s and paths for diff

use strict;
use warnings;

use utf8;
binmode(STDOUT,':utf8');
binmode(STDERR,':utf8');

use Encode::Locale;
use Encode;
use List::Util qw(min);

use feature 'say';

use Data::Dump qw(dump);

####################################
if( ($^O =~ /Win/i) && (`chcp` !~ /65001/) ) {`chcp 65001`}

# @ARGV = map { decode(locale => $_, 1) } @ARGV;

if( @ARGV ) {	# process files
	while ( $_ = shift @ARGV ) {
		open(my $fh, "<", $_) 
			or warn "cannot open $_: $!\n";
		local $/; #localized slurp mode
		my $list = <$fh>;
		close $fh;
		Main($list);
	}
} else {		# process stdin
	my @list = <STDIN>;
	Main(join '', @list);
}

exit(0);

sub Main { 
	utf8::decode($_[0]);
	my @list = split "\n", $_[0];
	@list = grep { $_ ne '' } @list; # remove empty strings
	my @temp = map { substr $_, 32 } @list; # cut-off md5s at start of string
	
	# find common paths' start
	my $common = $temp[0];
	foreach my $current (@temp) {
		# set longest(of current or common) string length to shortest's
		$common = substr $common, 0, min(length $current, length $common); 
		$current = substr $current, 0, min(length $current, length $common); 
		
		while( $current ne $common ) {
			$current = substr $current, 0, -1;
			$common = substr $common, 0, -1;
		}
	}
	
	# remove common
	@list = map { s/^([0-9a-f]{32,32})$common(.*)$/$1 $2/i; $_ } @list;
	
	say join "\n", @list;

}
