#!/usr/bin/perl -w

use strict;
use warnings;

use utf8;
binmode(STDOUT,':utf8'); binmode(STDERR,':utf8');
use Encode::Locale;
use Encode;
use Cwd;

use feature 'say';
# use Data::Dump qw(dump);

my $options = 'rctilD';
####################################
if( ($^O =~ /Win/i) && (`chcp` !~ /65001/) ) {`chcp 65001`}
if(@ARGV == 0) { say 'rsync -'.$options.': ERROR: missing path[s].'; exit(1) }
elsif(@ARGV == 1) { unshift @ARGV, getcwd }
splice @ARGV, 2;

@ARGV = map { decode(locale => $_, 1) } @ARGV;

print "-------------\n rsync -$options\n\n$ARGV[0]\n into\n -> $ARGV[1]\n-------------\n";

foreach (@ARGV) {
		Cwd::abs_path($_);
		s{\\}{/}g; s{^([a-z]):}{/cygdrive/$1}i; # path to cygwin
		chomp; utf8::decode($_);
	}
unless(PromptYN("Proceed?")) { exit(0) }


my $i = 0;
while ( my $log = `rsync -$options "$ARGV[0]" "$ARGV[1]"` ) {
	utf8::decode($log);
	say "\npass #".++$i.":"; say $log;
}
say "----\ndone in $i passes.";

exit(0);
####################################
sub Prompt {
	my ($query) = @_;
	local $| = 1; # autoflush
	print $query;
	chomp(my $answer = <STDIN>);
	return $answer;
}
sub PromptYN {
	my ($query) = @_;
	my $answer = Prompt("$query (Y/N): ");
	return lc($answer) eq 'y';
}