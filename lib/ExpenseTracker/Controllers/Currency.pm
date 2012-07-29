package ExpenseTracker::Controllers::Currency;
{
  $ExpenseTracker::Controllers::Currency::VERSION = '0.1';
}
{
  $ExpenseTracker::Controllers::Currency::VERSION = '0.1';
}
use Mojo::Base 'ExpenseTracker::Controllers::Base';

sub new{
  my $self = shift;
  
  my $obj = $self->SUPER::new(@_);
  
  $obj->{resource} = 'ExpenseTracker::Models::Result::Currency';

  return $obj;
  
}

1;