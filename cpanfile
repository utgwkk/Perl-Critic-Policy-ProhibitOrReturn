requires 'perl', '5.008001';
requires 'Perl::Critic::Policy';
requires 'Perl::Critic::Utils';

on 'test' => sub {
    requires 'Test::More', '0.98';
    requires 'Test::Perl::Critic';
};

