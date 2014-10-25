use utf8;
package ExpenseTracker::Models::Result::Operation;
{
  $ExpenseTracker::Models::Result::Operation::VERSION = '0.004';
}
{
  $ExpenseTracker::Models::Result::Operation::VERSION = '0.004';
}

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

ExpenseTracker::Models::Result::Operation

=head1 VERSION

version 0.004

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<operations>

=cut

__PACKAGE__->table("operations");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 1

=head2 description

  data_type: 'varchar'
  is_nullable: 1

=head2 amount

  data_type: 'real'
  is_nullable: 0

=head2 currency_id

  data_type: 'integer'
  default_value: 1
  is_nullable: 0

=head2 created_at

  data_type: 'datetime'
  is_nullable: 0

=head2 updated_at

  data_type: 'datetime'
  default_value: current_timestamp
  is_nullable: 0

=head2 user_id

  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "name",
  { data_type => "varchar", is_nullable => 1 },
  "description",
  { data_type => "varchar", is_nullable => 1 },
  "amount",
  { data_type => "real", is_nullable => 0 },
  "currency_id",
  { data_type => "integer", default_value => 1, is_nullable => 0 },
  "created_at",
  { data_type => "datetime", is_nullable => 0 },
  "updated_at",
  {
    data_type     => "datetime",
    default_value => \"current_timestamp",
    is_nullable   => 0,
  },
  "user_id",
  { data_type => "integer", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07017 @ 2012-07-08 11:25:25
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:fLlnmXdfwwvpOJboKwSPUQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration

__PACKAGE__->has_many(operations_category => 'ExpenseTracker::Models::Result::OperationsCategory', 'operation_id');
__PACKAGE__->many_to_many(categories => 'operations_category', 'category');

__PACKAGE__->belongs_to(user => 'ExpenseTracker::Models::Result::User', 'user_id');
__PACKAGE__->belongs_to(currency => 'ExpenseTracker::Models::Result::Currency', 'currency_id');

1;
