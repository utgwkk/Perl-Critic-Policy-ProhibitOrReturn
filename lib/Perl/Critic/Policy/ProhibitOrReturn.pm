package Perl::Critic::Policy::ProhibitOrReturn;
use 5.008001;
use strict;
use warnings;
use parent 'Perl::Critic::Policy';
use constant DESC => '`or return` in source file';
use constant EXPL => '`or return` is prohibited. Use `return ... unless ...` instead.';

use Perl::Critic::Utils qw( :severities );

our $VERSION = "0.01";

sub default_severity { return $SEVERITY_MEDIUM; }
sub applies_to       { return 'PPI::Token::Word'; }

sub violates {
    my ($self, $elem, undef) = @_;

    return if $elem->content ne 'return';

    my $sprev = $elem->sprevious_sibling;
    return if !$sprev;
    return if $sprev->content ne 'or';

    return $self->violation(DESC, EXPL, $elem->parent);
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

