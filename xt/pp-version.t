# Test that the version of the pure-Perl module is the same as the
# main module's one.

use warnings;
use strict;
use utf8;
use FindBin '$Bin';
use Test::More;
my $builder = Test::More->builder;
binmode $builder->output,         ":utf8";
binmode $builder->failure_output, ":utf8";
binmode $builder->todo_output,    ":utf8";
binmode STDOUT, ":encoding(utf8)";
binmode STDERR, ":encoding(utf8)";
use JSON::Create;
use JSON::Create::PP;
ok ($JSON::Create::VERSION eq $JSON::Create::PP::VERSION,
    "Version numbers same");
done_testing ();
