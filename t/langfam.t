#!/usr/bin/perl

use warnings;
use strict;
require 5.002;

my($runtests,$dir,$tdir);
$::type          = '';
$::generic_tests = '';
$::module        = '';

$::type   = 'langfam';
$::module = 'Locale::Codes::LangFam';

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
Apache languages
   ~
   apa

2name
apa
   Apache languages

_code2code
apa
alpha
alpha
   apa

all_codes
2
   ~
   aav
   afa

all_names
2
   ~
   Afro-Asiatic languages
   Alacalufan languages

$::generic_tests
";

print "langfam...\n";
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
