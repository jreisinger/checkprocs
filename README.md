checkprocs -- a self-containted script to check whether we have the same
processes running before and after an upgrade. One of the ways to use it:

    wget https://raw.githubusercontent.com/jreisinger/checkprocs/master/checkprocs && chmod u+x checkprocs
    ./checkprocs -h

checkprocs.t -- tests to verify the checkprocs script. To test checkprocs (ex.
when you are a developer adding new features):

    [perlbrew exec] prove checkprocs.t

For more see https://github.com/jreisinger/blog/blob/master/posts/testing-perl-script.md
