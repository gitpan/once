package once;

use strict;
use warnings;

use base 'Exporter';

our $VERSION = '0.01';

our @EXPORT = qw(ONCE);

sub ONCE (&) {
    my $code = shift;
    our %seen;
    my ($package, $filename, $line) = caller;
    unless ($seen{ "ONCE $package $filename $line" }++) {
        $code->();
    }
}

1;

__END__

=head1 NAME

once - execute code only once throughout the program's lifetime

=head1 SYNOPSIS

    sub setup {
        my $self = shift;
        ONCE {
            print "run only once however often setup() is called"
        };
        # other_things();
    }

=head1 DESCRIPTION

This module provides a way to run code only once, no matter how often the
surrounding code is called.

=head1 METHODS

=over 4

=item C<ONCE>

This subroutine is exported automatically. It takes a code block and executes
it only the first time that this specific call of C<ONCE> is encountered. This
might be useful, for example, in a situation where you initialize an object but
only want to do it the first time any object of that class is initialized,
perhaps to install methods or setup some other data.

=back

=head1 BUGS AND LIMITATIONS

No bugs have been reported.

Please report any bugs or feature requests through the web interface at
L<http://rt.cpan.org>.

=head1 INSTALLATION

See perlmodinstall for information and options on installing Perl modules.

=head1 AVAILABILITY

The latest version of this module is available from the Comprehensive Perl
Archive Network (CPAN). Visit L<http://www.perl.com/CPAN/> to find a CPAN
site near you. Or see L<http://www.perl.com/CPAN/authors/id/M/MA/MARCEL/>.

The development version lives at L<http://github.com/hanekomu/once/>.
Instead of sending patches, please fork this project using the standard git
and github infrastructure.

=head1 AUTHORS

Marcel GrE<uuml>nauer, C<< <marcel@cpan.org> >>

=head1 COPYRIGHT AND LICENSE

Copyright 2009 by Marcel GrE<uuml>nauer

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

