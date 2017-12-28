
package Paws::WorkMail::CreateUser;
  use Moose;
  has DisplayName => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);
  has Password => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateUser');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::CreateUserResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::CreateUser - Arguments for method CreateUser on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateUser on the 
Amazon WorkMail service. Use the attributes of this class
as arguments to method CreateUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateUser.

As an example:

  $service_obj->CreateUser(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DisplayName => Str

The display name for the user to be created.



=head2 B<REQUIRED> Name => Str

The name for the user to be created.



=head2 B<REQUIRED> OrganizationId => Str

The identifier of the organization for which the user is created.



=head2 B<REQUIRED> Password => Str

The password for the user to be created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateUser in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
