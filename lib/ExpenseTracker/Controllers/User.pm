package ExpenseTracker::Controllers::User;
{
  $ExpenseTracker::Controllers::User::VERSION = '0.005';
}
{
  $ExpenseTracker::Controllers::User::VERSION = '0.005';
}
use Mojo::Base 'ExpenseTracker::Controllers::Base';

sub new{
  my $self = shift;
  
  my $obj = $self->SUPER::new(@_);
  
  $obj->{resource} = 'ExpenseTracker::Models::Result::User';

  return $obj;
  
}

1;

__END__
=pod
 
=head1 NAME
ExpenseTracker::Controllers::User - Controller responsible for the User resource


=head1 VERSION

version 0.005

=cut
