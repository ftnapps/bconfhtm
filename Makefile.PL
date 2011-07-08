use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'bconfhtm',
    AUTHOR              => q{Robert James Clay <jame@rocasa.us>},
    VERSION_FROM        => 'bin/bconfhtm.pl',
    ABSTRACT            => 'Create a BBBS Conference Statistics HTML page for a BBBS system.',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    EXE_FILES           => [ qw( bin/bconfhtm.pl ) ],
    PL_FILES            => {},
    PREREQ_PM => {
        'Readonly'  	 	=> 0,
        'Getopt::Std'   	=> 0,
        'File::Slurp'   	=> 0,
        'HTML::Template'   	=> 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'bconfhtm-*' },
);
