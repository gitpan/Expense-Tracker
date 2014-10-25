package ExpenseTracker::Controllers::Base;
{
  $ExpenseTracker::Controllers::Base::VERSION = '0.003';
}
{
  $ExpenseTracker::Controllers::Base::VERSION = '0.003';
}

use strict;
use warnings;

use Mojo::Base 'Mojolicious::Controller';
use Mojo::JSON;

use DBIx::Class::ResultClass::HashRefInflator;

sub create{
  my $self = shift;
  
  my $result = $self->app->model
    ->resultset( $self->{resource} )    
    ->create( $self->req->json );   

  return $self->render_json( $result->{_column_data} );
}

sub update{
  my $self = shift;
  
  my $result;
  
  return $self->render_json( $result );
}

sub list{
  my $self = shift;  
    
  my $result;
  
  return $self->render_json( $result );
}


sub show{
  my $self = shift;
  
  my @result = $self->app->model
      ->resultset( $self->{resource} )
      ->search_rs(
          { id => $self->param('id') },
          { result_class => 'DBIx::Class::ResultClass::HashRefInflator' },
      )
      ->all;  
  
  return $self->render_not_found if ( scalar( @result == 0 ) );
  return $self->render_json( [ @result ] );
}

sub remove{
  my $self = shift;
  
  my $result;
  
  return $self->render_json( $result );
}
1;