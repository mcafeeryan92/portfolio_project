#!/usr/bin/perl -w

use Getopt::Long;

$#ARGV>=2 or die "usage: time_series_symbol_project.pl symbol steps-ahead model \n";

my $symbol=param('symbol');
my $steps=param('steps-ahead');
my $model=join(" ",param('model'));

system "get_data.pl --notime --close $symbol > _data.in";
system "time_series_project _data.in $steps $model 2>/dev/null";

