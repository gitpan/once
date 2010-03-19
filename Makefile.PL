
use strict;
use warnings;

 BEGIN { require 5.008; } 

use ExtUtils::MakeMaker 6.11;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'once',
                       'DISTNAME' => 'once',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.11'
                                               },
                       'AUTHOR' => 'Marcel Gruenauer <marcel@cpan.org>',
                       'BUILD_REQUIRES' => {},
                       'ABSTRACT' => 'execute code only once throughout the program\'s lifetime',
                       'EXE_FILES' => [],
                       'VERSION' => '1.100790',
                       'PREREQ_PM' => {
                                        'Test::More' => '0.88',
                                        'Scalar::Util' => '0',
                                        'Test::Differences' => '0',
                                        'English' => '0',
                                        'File::Find' => '0',
                                        'File::Temp' => '0',
                                        'Exporter' => '0',
                                        'Carp' => '0'
                                      },
                       'LICENSE' => 'perl'
                     );


delete $WriteMakefileArgs{LICENSE}
  unless eval { ExtUtils::MakeMaker->VERSION(6.31) };

WriteMakefile(%WriteMakefileArgs);



