package ExpenseTracker::Controllers::Site;
{
  $ExpenseTracker::Controllers::Site::VERSION = '0.004';
}
{
  $ExpenseTracker::Controllers::Site::VERSION = '0.004';
}
use Mojo::Base 'Mojolicious::Controller';

sub welcome{
  my $self = shift;
  
  return $self->render( message => 'Hello World' );
}

1;

__END__
=pod
 
=head1 NAME
ExpenseTracker::Controllers::Site

=head1 VERSION

version 0.004

=cut
