package Protocol::XMPP::User;
use strict;
use warnings;

use Protocol::XMPP::Roster;

sub new {
	my $class = shift;
	my $self = bless { }, $class;
	return $self;
}

sub name {

}

sub roster {
	my $self = shift;
	return Protocol::XMPP::Roster->new($self);
}

1;

__END__

=head1 AUTHOR

Tom Molesworth <cpan@entitymodel.com>

=head1 LICENSE

Copyright Tom Molesworth 2010-2011. Licensed under the same terms as Perl itself.

