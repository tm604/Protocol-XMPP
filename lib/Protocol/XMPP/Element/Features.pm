package Protocol::XMPP::Element::Features;
use strict;
use warnings;
use parent qw(Protocol::XMPP::ElementBase);

=head1 NAME

Protocol::XMPP::Features - broker for setting up internal state and triggering reponses based on supported features

=head1 SYNOPSIS

=head1 DESCRIPTION

=head1 METHODS

=cut

=head1 C<end_element>

=cut

sub end_element {
	my $self = shift;
	$self->debug("End of the feature list");
	$self->stream->{features} = $self; # strong ref, parent will remove when no longer needed
	$self->stream->dispatch_event('features');
	return if $self->stream->{tls_pending};
	return $self->stream->dispatch_event('login') if $self->is_authorised;
	$self->stream->dispatch_event('login_ready');
}

=head1 C<_sasl_mechanism_list>

Return a list of SASL mechanisms as a space-separated string.

=cut

sub _sasl_mechanism_list {
	my $self = shift;
	return join(' ', map { $_->type } @{$self->{mechanism}})
}

1;

__END__

=head1 AUTHOR

Tom Molesworth <cpan@entitymodel.com>

=head1 LICENSE

Copyright Tom Molesworth 2010-2014. Licensed under the same terms as Perl itself.

