package Protocol::XMPP::Element::Stream;
BEGIN {
  $Protocol::XMPP::Element::Stream::VERSION = '0.005';
}
use strict;
use warnings;
use parent qw(Protocol::XMPP::ElementBase);

=head1 NAME

Protocol::XMPP::Stream - broker for setting up internal state and triggering reponses based on supported features

=head1 VERSION

version 0.005

=head1 SYNOPSIS

=head1 DESCRIPTION

=head1 METHODS

=cut

sub new {
	my $class = shift;
	my $self = $class->SUPER::new(@_);
	$self->stream->remote_opened->done;
	$self
}

=head2 C<end_element>

=cut

sub end_element {
	my $self = shift;
	$self->stream->remote_closed->done;
}

1;

__END__

=head1 AUTHOR

Tom Molesworth <cpan@entitymodel.com>

=head1 LICENSE

Copyright Tom Molesworth 2010-2014. Licensed under the same terms as Perl itself.
