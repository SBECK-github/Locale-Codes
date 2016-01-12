#!/usr/bin/perl

use warnings;
use strict;
require 5.002;

my($runtests,$dir,$tdir);
$::type          = '';
$::generic_tests = '';
$::module        = '';

$::type   = 'langvar';
$::module = 'Locale::Codes::LangVar';

$runtests=shift(@ARGV);
if ( -f "t/testfunc.pl" ) {
  require "t/testfunc.pl";
  require "t/vals.pl";
  $dir="./lib";
  $tdir="t";
} elsif ( -f "testfunc.pl" ) {
  require "testfunc.pl";
  require "vals.pl";
  $dir="../lib";
  $tdir=".";
} else {
  die "ERROR: cannot find testfunc.pl\n";
}

unshift(@INC,$dir);

my $tests = "

2code
Eastern Armenian
   arevela

2name
arevela
   Eastern Armenian

_code2code
arevela
alpha
alpha
   arevela

all_codes
2
   ~
   1606nict
   1694acad

all_names
2
   ~
   \"Academic\" (\"governmental\") variant of Belarusian as codified in 1959
   ALA-LC Romanization, 1997 edition

$::generic_tests
";

print "langvar...\n";
test_Func(\&test,$tests,$runtests);

1;
# Local Variables:
# mode: cperl
# indent-tabs-mode: nil
# cperl-indent-level: 3
# cperl-continued-statement-offset: 2
# cperl-continued-brace-offset: 0
# cperl-brace-offset: 0
# cperl-brace-imaginary-offset: 0
# cperl-label-offset: -2
# End:
