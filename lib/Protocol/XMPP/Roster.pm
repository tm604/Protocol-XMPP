package Protocol::XMPP::Roster;

use strict;
use warnings;

=head1 NAME

Protocol::XMPP::Roster - handle XMPP protocol stream

=cut

sub new { my $class = shift; bless { @_ }, $class; }

1;

__END__

=head1 AUTHOR

Tom Molesworth <cpan@entitymodel.com>

=head1 LICENSE

Copyright Tom Molesworth 2010-2014. Licensed under the same terms as Perl itself.

