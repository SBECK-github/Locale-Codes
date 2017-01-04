package Locale::Codes::Currency;
# Copyright (C) 2001      Canon Research Centre Europe (CRE).
# Copyright (C) 2002-2009 Neil Bowers
# Copyright (c) 2010-2017 Sullivan Beck
# This program is free software; you can redistribute it and/or modify it
# under the same terms as Perl itself.

# This file was automatically generated.  Any changes to this file will
# be lost the next time 'gen_mods' is run.
#    Generated on: Wed Jan  4 07:49:32 EST 2017

use strict;
use warnings;
require 5.006;
require Exporter;

our($VERSION,@ISA,@EXPORT);
$VERSION   = '3.50';
@ISA       = qw(Exporter);

################################################################################
use Locale::Codes;

@EXPORT    = qw(
                code2currency
                currency2code
                all_currency_codes
                all_currency_names
                currency_code2code
                LOCALE_CURRENCY_ALPHA
                LOCALE_CURRENCY_NUMERIC
                LOCALE_CURR_ALPHA
                LOCALE_CURR_NUMERIC
               );

our $obj = new Locale::Codes('currency');

sub _show_errors {
   my($val) = @_;
   $obj->show_errors($val);
}

sub code2currency {
   return $obj->code2name(@_);
}

sub currency2code {
   return $obj->name2code(@_);
}

sub currency_code2code {
   return $obj->code2code(@_);
}

sub all_currency_codes {
   return $obj->all_codes(@_);
}

sub all_currency_names {
   return $obj->all_names(@_);
}

sub rename_currency {
   return $obj->rename_code(@_);
}

sub add_currency {
   return $obj->add_code(@_);
}

sub delete_currency {
   return $obj->delete_code(@_);
}

sub add_currency_alias {
   return $obj->add_alias(@_);
}

sub delete_currency_alias {
   return $obj->delete_alias(@_);
}

sub rename_currency_code {
   return $obj->replace_code(@_);
}

sub add_currency_code_alias {
   return $obj->add_code_alias(@_);
}

sub delete_currency_code_alias {
   return $obj->delete_code_alias(@_);
}

1;
