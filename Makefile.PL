use inc::Module::Install;
include 'Module::AutoInstall';

name 'once';
all_from 'lib/once.pm';
perl_version '5.006';

homepage 'http://search.cpan.org/dist/once/';
bugtracker 'http://rt.cpan.org/Public/Dist/Display.html?Name=once';
repository 'http://github.com/hanekomu/once/tree/master';

test_requires 'Test::More' => '0.70';
test_requires 'Test::Differences';
extra_tests;

auto_install;
auto_include;
WriteAll;
