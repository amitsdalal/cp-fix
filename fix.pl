#!/usr/local/cpanel/3rdparty/bin/perl
use strict;
use warnings;
use Cpanel::JSON;
use Data::Dumper;
use File::Slurp;
use YAML::Syck;
my $file = "@ARGV";
my $json = File::Slurp::slurp ($file);
my $hr = Cpanel::JSON::Load ($json);
my $yaml = YAML::Syck::Dump ($hr);
print $yaml . "\n";
