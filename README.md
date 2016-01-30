[![Build Status](https://travis-ci.org/jreisinger/checkprocs.svg?branch=master)](https://travis-ci.org/jreisinger/checkprocs)

`checkprocs` - a self-containted script to check whether we have the same
processes running before and after an upgrade. Just download it and run it:

    wget https://raw.githubusercontent.com/jreisinger/checkprocs/master/checkprocs && chmod u+x checkprocs
    ./checkprocs -h

`checkprocs.t` - tests to verify the checkprocs script. To test checkprocs (ex.
when you are a developer adding new features) manually:

    [perlbrew exec] prove checkprocs.t

For more (about modulinos) see
https://github.com/jreisinger/blog/blob/master/posts/testing-perl-script.md
