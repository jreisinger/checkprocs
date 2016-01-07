use strict;
use warnings;
use Test::More tests => 3;

use_ok('checkprocs');

#<<<
my $old = [(
    'proc1',
    '/path/to/proc2',
    'proc3',
    'proc4 --with-arg',
    '/path/to/proc5 -w',
)];
my $new = [( 
    'proc1',
    'proc3',
    '/path/to/proc5'
)];
#>>>

{
    my @missing_procs = main::missing_procs( $old, $new );
    is(
        "@missing_procs",
        '/path/to/proc2 proc4',
        'Found missing process w/o args'
    );
}

{
    my @missing_procs = main::missing_procs( $old, $new, { verbose => 1 } );
    is(
        "@missing_procs",
        '/path/to/proc2 proc4 --with-arg',
        'Found missing process w/ args'
    );
}
