#!/usr/bin/perl -w
# Copyright (c) 2010-2014 Sullivan Beck.  All rights reserved.
# This program is free software; you can redistribute it and/or modify it
# under the same terms as Perl itself.

# This is used to match country names from one source with those from
# an existing source.  It can also be used to create additional aliases
# that do not occur in any of the standards.
#
$Data{'country'}{'link'} =
  [
   [ "Bolivia, Plurinational State of",
        "Bolivia" ],
   [ "Brunei Darussalam",
        "Brunei" ],
   [ "Cocos (Keeling) Islands (The)",
        "Cocos Islands",
        "The Cocos Islands",
        "Keeling Islands",
        "The Keeling Islands" ],
   [ "Congo",
        "The Republic of the Congo",
        "Republic of the Congo",
        "Congo, The Republic of the",
        "Congo, Republic of the",
        "Congo-Brazzaville",
        "Congo (Brazzaville)" ],
   [ "Congo (The Democratic Republic of the)",
        "Congo, The Democratic Republic of the",
        "Congo, Democratic Republic of the",
        "The Democratic Republic of the Congo",
        "Democratic Republic of the Congo",
        "Congo-Kinshasa",
        "Congo (Kinshasa)" ],
   [ "Falkland Islands (The) [Malvinas]",
        "Falkland Islands (Malvinas)",
        "Falkland Islands (Islas Malvinas)" ],
   [ "Faroe Islands (The)",
        "Faeroe Islands",
        "The Faeroe Islands" ],
   [ "French Southern Territories",
        "French Southern and Antarctic Lands" ],
   [ "Holy See (The) [Vatican City State]",
        "Holy See (Vatican City State)",
        "Holy See (Vatican City)",
        "The Holy See",
        "Holy See",
        "Holy See (The)",
        "Holy See, The",
        "Vatican City" ],
   [ "Hong Kong",
        "China, Hong Kong Special Administrative Region",
        "Hong Kong S.A.R.",
        "Hong Kong Special Administrative Region of China" ],
   [ "Iran (The Islamic Republic of)",
        "Iran" ],
   [ "Kazakhstan",
        "Kazakstan" ],
   [ "Korea (The Democratic People's Republic of)",
        "North Korea" ],
   [ "Korea (The Republic of)",
        "South Korea" ],
   [ "Macao",
        "China, Macao Special Administrative Region",
        "Macao Special Administrative Region of China",
        "Macau S.A.R",
        "Macau S.A.R.",
        "Macau" ],
   [ "Macedonia, The former Yugoslav Republic of",
        "Macedonia" ],
   [ "Myanmar",
        "The Republic of the Union of Myanmar",
        "Republic of the Union of Myanmar",
        "Burma" ],
   [ "Pitcairn",
        "Pitcairn Island",
        "Pitcairn Islands" ],
   [ "Saint Barthelemy",
        "Saint-Barthelemy" ],
   [ "Saint Helena, Ascension and Tristan da Cunha",
        "Saint Helena" ],
   [ "Saint Martin (French part)",
        "Saint Martin",
        "Saint-Martin (French part)",
        "Saint-Martin" ],
   [ "South Georgia and the South Sandwich Islands",
        "South Georgia and the Islands" ],
   [ "Svalbard and Jan Mayen",
        "Svalbard and Jan Mayen Islands" ],
   [ "Syrian Arab Republic",
        "Syria" ],
   [ "Taiwan (Province of China)",
        "Taiwan",
        "Taiwan, Province of China" ],
   [ "Timor-Leste",
        "East Timor",
        "The Democratic Republic of Timor-Leste",
        "Democratic Republic of Timor-Leste",
        "Timor-Leste, The Democratic Republic of",
        "Timor-Leste, Democratic Republic of",
        "Timor-Leste (The Democratic Republic of)",
        "Timor-Leste (Democratic Republic of)" ],
   [ "United Kingdom (The)",
        "Great Britain",
        "United Kingdom of Great Britain and Northern Ireland",
        "UK" ],
   [ "United States (The)",
        "US",
        "USA",
        "United States of America",
        "The United States of America" ],
   [ "Venezuela, Bolivarian Republic of",
        "Venezuela, Bolivarian Republic",
        "Venezuela" ],
   [ "Viet Nam",
        "Vietnam" ],
   [ "Virgin Islands (British)",
        "British Virgin Islands",
        "Virgin Islands, British",
        "Virgin Islands (UK)" ],
   [ "Virgin Islands (U.S.)",
        "United States Virgin Islands",
        "Virgin Islands (US)",
        "Virgin Islands, U.S.",
        "Virgin Islands" ],
   [ "Wallis and Futuna",
        "Wallis and Futuna Islands",
        "The Territory of the Wallis and Futuna Islands",
        "Territory of the Wallis and Futuna Islands" ],
   [ "Yemen",
        "The Yemeni Republic",
        "Yemeni Republic",
        "Yemeni Republic, The",
        "Yemeni Republic (The)" ],
   [ "Zambia",
        "The Republic of Zambia",
        "Republic of Zambia",
        "Republic of Zambia, The",
        "Republic of Zambia (The)" ],
   [ "Zimbabwe",
        "The Republic of Zimbabwe",
        "Republic of Zimbabwe",
        "Republic of Zimbabwe, The",
        "Republic of Zimbabwe (The)" ],
];

################################################################################
# ISO 3166-1 countries

$Data{'country'}{'iso'}{'orig'}{'name'} = {
   "Åland Islands"                           => "Aland Islands",
   "Côte d'Ivoire"                           => "Cote d'Ivoire",
   "Curaçao"                                 => "Curacao",
   "Réunion"                                 => "Reunion",
   "Saint Barthélemy"                        => "Saint Barthelemy",
   "Western Sahara*"                         => "Western Sahara",
};

$Data{'country'}{'iso'}{'ignore'} = {
   'name'    => {},
   'alpha-2' => {},
   'alpha-3' => {},
   'numeric' => {},
};

# Unusued
$Data{'country'}{'iso'}{'new'} = {};

################################################################################
# IANA (source of top level domains)

$Data{'country'}{'iana'}{'orig'}{'name'} = {
   "Åland Islands"                           => "Aland Islands",
   "Cocos (keeling) Islands"                 => "Cocos (Keeling) Islands",
   "Congo, The Democratic Republic of The"   => "Congo, The Democratic Republic of the",
   "CÔte D'ivoire"                           => "Cote D'Ivoire",
   "CuraÇao"                                 => "Curacao",
   "Falkland Islands (malvinas)"             => "Falkland Islands (Malvinas)",
   "Holy See (vatican City State)"           => "Holy See (Vatican City State)",
   "RÉunion"                                 => "Reunion",
   "Saint BarthÉlemy"                        => "Saint Barthelemy",
   "Ussr"                                    => "USSR",
   "Virgin Islands, U.s."                    => "Virgin Islands, U.S.",
};

$Data{'country'}{'iana'}{'ignore'} = {
   'name'   => {},
   'dom'    => {},
};

$Data{'country'}{'iana'}{'new'} = {
   'Ascension Island'                        => 1,
   'Netherlands Antilles'                    => 1,
   'Western Sahara'                          => 1,
   'European Union'                          => 1,
   'USSR'                                    => 1,
   'Wallis and Futuna'                       => 1,
   'Yemen'                                   => 1,
   'Zambia'                                  => 1,
   'Zimbabwe'                                => 1,
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
