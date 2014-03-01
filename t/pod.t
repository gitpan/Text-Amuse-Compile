#!perl -T
use 5.010001;
use strict;
use warnings FATAL => 'all';
use Test::More;

unless ($ENV{RELEASE_TESTING}) {
    plan skip_all => "Not required for installation";
    exit;
}
# Ensure a recent version of Test::Pod
my $min_tp = 1.22;
eval "use Test::Pod $min_tp";
plan skip_all => "Test::Pod $min_tp required for testing POD" if $@;

all_pod_files_ok();
