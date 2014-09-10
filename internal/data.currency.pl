#!/usr/bin/perl -w
# Copyright (c) 2010-2014 Sullivan Beck.  All rights reserved.
# This program is free software; you can redistribute it and/or modify it
# under the same terms as Perl itself.

$Data{'currency'}{'link'} =
  [
  ];

################################################################################

$Data{'currency'}{'iso'}{'orig'}{'name'} = {
   "CFA Franc BCEAOÂ "      => "CFA Franc BCEAO",
   "CFA Franc BEACÂ "       => "CFA Franc BEAC",
   "NgultrumÂ "             => "Ngultrum",
   "Unidades de fomentoÂ "  => "Unidades de fomento",
   "Paâ€™anga"               => "Pa'anga",
   "Pa\x{2019}anga"        => "Pa'anga",
   "US Dollar (Next day)Â " => "US Dollar (Next day)",
   "US Dollar (Same day)Â " => "US Dollar (Same day)",
   "Bond Markets Unit European Monetary Unit (E.M.U.-6)Â "
                           => "Bond Markets Unit European Monetary Unit (E.M.U.-6)",   "ÅLAND ISLANDS"      => "Aland Islands",
   "CÔTE D'IVOIRE"      => "Cote d'Ivoire",
   "CURAÇAO"            => "Curacao",
   "INTERNATIONAL MONETARY FUND (IMF) "
                           => "International Monetary Fund (IMF) ",
   "KOREA, DEMOCRATIC PEOPLEâ€™S REPUBLIC OF"
                           => "Korea, Democratic People's Republic of",
   "LAO PEOPLEâ€™S DEMOCRATIC REPUBLIC"
                           => "Lao People's Democratic Republic",
   "RÉUNION"            => "Reunion",
   "SAINT BARTHÉLEMY"   => "Saint Barthelemy",
};

$Data{'currency'}{'iso'}{'ignore'} = {
   "name"   => {
                "Codes specifically reserved for testing purposes"   => 1,
                "The codes assigned for transactions where no currency is involved"    => 1,
               },
   "num"    => {},
   "alpha"  => {},
};

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
