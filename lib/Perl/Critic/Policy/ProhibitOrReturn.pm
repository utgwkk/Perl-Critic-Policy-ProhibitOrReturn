package Perl::Critic::Policy::ProhibitOrReturn;
use 5.008001;
use strict;
use warnings;
use parent 'Perl::Critic::Policy';

use Perl::Critic::Utils qw( :severities );

our $VERSION = "0.01";

sub default_severity { return $SEVERITY_MEDIUM; }
sub applies_to       { return 'PPI::Statement'; }

sub violates {
    my ($self, $elem, undef) = @_;
    
    # TODO: implement it

    return;
}

1;
__END__

=encoding utf-8

=head1 NAME

Perl::Critic::Policy::ProhibitOrReturn - It's new $module

=head1 SYNOPSIS

    use Perl::Critic::Policy::ProhibitOrReturn;

=head1 DESCRIPTION

Perl::Critic::Policy::ProhibitOrReturn is ...

=head1 LICENSE

Copyright (C) utgwkk.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

utgwkk E<lt>utagawakiki@gmail.comE<gt>

=cut

