package Colorful;

use strict;
use warnings;
use feature 'say';
use Exporter;
use vars qw($VERSION @ISA @EXPORT @EXPORT_OK);

    $VERSION = 0.1;
    @ISA = qw(Exporter);
    @EXPORT = qw(panic grin whine);

    sub panic {
        die "\x1b[1m\x1b[31m".(shift || 'Fatal error')."\x1b[0m\n";
    }

    sub grin {
        warn "\x1b[32m".(shift)."\x1b[0m\n";
    }

    sub whine {
        warn "\x1b[33m".(shift || 'Unknown error')."\x1b[0m\n";
    }

1;
