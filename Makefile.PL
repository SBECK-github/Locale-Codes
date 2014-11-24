######################################################################
# Makefile.PL for Locale::Codes
######################################################################

use strict;
use warnings;
use 5.006;
use ExtUtils::MakeMaker 6.30;

my %module_prereq = (
   'Carp'                     => '0',
   'utf8'                     => '0',
);

my %script_prereq = (
);

my %test_prereq = (
   'Storable'                 => '0',
   'Test::More'               => '0',
);

my %config_prereq = (
   'ExtUtils::MakeMaker'      => '6.30',
);

%module_prereq = (%module_prereq,%script_prereq);
my $EU_MM_V    = $ExtUtils::MakeMaker::VERSION;
$EU_MM_V       =~ s/_//g;
if ($EU_MM_V < 6.64) {
   %config_prereq = (%config_prereq,%test_prereq);
}

WriteMakefile(
   NAME             => "Locale::Codes",
   VERSION          => "3.33",
   ABSTRACT         => "a distribution of modules to handle locale codes",
   LICENSE          => "perl",
   ($EU_MM_V >= 6.48
    ? (MIN_PERL_VERSION => "5.006")
    : ()),
   AUTHOR           => "Sullivan Beck (sbeck\@cpan.org)",
   "dist"           => {COMPRESS=>"gzip",SUFFIX=>"gz"},
   PL_FILES         => {},
   PREREQ_PM        => \%module_prereq,
   ($EU_MM_V >= 6.52
    ? (CONFIGURE_REQUIRES => \%config_prereq)
    : ()),
   ($EU_MM_V >= 6.64
    ? (TEST_REQUIRES   => \%test_prereq)
    : ()),

   ($EU_MM_V > 6.45
    ? (META_MERGE => {
        resources => {
           repository => {
              type => "git",
              web  => "https://github.com/SBECK-github/Locale-Codes",
              url  => "git://github.com/SBECK-github/Locale-Codes.git",
           }
        }
       })
    : ()),
   INSTALLDIRS      => (($] >= 5.007003) ? 'perl' : 'site'),
);
