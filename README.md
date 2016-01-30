About
-----

A little tool to help you with a Linux distribution upgrade (like `apt-get
dist-upgrade`).

* `checkprocs` - a self-containted script to check whether we have the same
processes running before and after an upgrade.

* `checkprocs.t` - tests to verify the `checkprocs` script.

Running
-------

Just download the script and run it, like:

    wget https://raw.githubusercontent.com/jreisinger/checkprocs/master/checkprocs && chmod u+x checkprocs
    ./checkprocs -h

Testing
-------

[![Build Status](https://travis-ci.org/jreisinger/checkprocs.svg?branch=master)](https://travis-ci.org/jreisinger/checkprocs)

To test `checkprocs` (ex. when you are a developer adding new features)
manually:

    [perlbrew exec] prove checkprocs.t

More
----

For more (about modulinos) see [Testing a Perl
Script](https://github.com/jreisinger/blog/blob/master/posts/testing-perl-script.md)
post.
