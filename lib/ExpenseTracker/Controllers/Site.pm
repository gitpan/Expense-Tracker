package ExpenseTracker::Controllers::Site;
{
  $ExpenseTracker::Controllers::Site::VERSION = '0.1';
}
{
  $ExpenseTracker::Controllers::Site::VERSION = '0.1';
}
use Mojo::Base 'Mojolicious::Controller';

sub welcome{
  my $self = shift;
  
  return $self->render( message => 'Hello World' );
}

1;