#!/usr/bin/perl

use warnings 'all';
use strict;
use Test::Inter;
my $t = new Test::Inter $0;

use Locale::Codes;
my $o;

local $SIG{__WARN__} = sub { my @err = split(/\n/,$_[0]); $::stderr_msg = $err[0] };

sub test {
   my($sub,@test) = @_;
   $::stderr_msg  = '';
   my @ret;

   if ($sub eq 'type') {
      @ret = $o->type(@test);
   } elsif ($sub eq '_code') {
      @ret = $o->_code(@test);
   } elsif ($sub eq 'new') {
      $o = new Locale::Codes(@test);
      return 0;
   }

   if ($::stderr_msg) {
      chomp($::stderr_msg);
      return $::stderr_msg;
   } else {
      return @ret;
   }
}

my $tests = "

new              => 0

type foo         => 'ERROR: type: invalid argument: foo'

_code            => 'ERROR: no type set for Locale::Codes object'

#####

type country     => 'alpha-2'

_code '' alpha-3 => 0 '' alpha-3

_code aa foo     => 'ERROR: _code: invalid codeset provided: foo'

_code zzz        => 'ERROR: _code: code not in codeset: zzz [alpha-2]'

_code zzz ''     => 'ERROR: _code: code not in codeset: zzz [alpha-2]'

_code zz alpha-3 => 'ERROR: _code: code not in codeset: zz [alpha-3]'

#####

new country      => 0

_code '' alpha-3 => 0 '' alpha-3

new country alpha-2 1 => 0

";

$t->tests(func  => \&test,
          tests => $tests);
$t->done_testing();
