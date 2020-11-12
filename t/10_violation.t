use Test2::V0;
use Perl::Critic;
use Perl::Critic::Policy::ProhibitOrReturn;

my $code = do {
    open my $fh, '<', 't/data/violation.pl' or die $!;
    local $/;
    <$fh>;
};
my $critic = Perl::Critic->new(
    '-single-policy' => 'ProhibitOrReturn',
);
my @violations = $critic->critique(\$code);
my @descriptions = map { $_->description } @violations;

is \@descriptions, ['`or return` is prohibited'];

done_testing;
