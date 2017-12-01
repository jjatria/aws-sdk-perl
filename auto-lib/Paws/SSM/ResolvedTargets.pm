package Paws::SSM::ResolvedTargets;
  use Moose;
  has ParameterValues => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Truncated => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::ResolvedTargets

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::ResolvedTargets object:

  $service_obj->Method(Att1 => { ParameterValues => $value, ..., Truncated => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::ResolvedTargets object:

  $result = $service_obj->Method(...);
  $result->Att1->ParameterValues

=head1 DESCRIPTION

Information about targets that resolved during the Automation
execution.

=head1 ATTRIBUTES


=head2 ParameterValues => ArrayRef[Str|Undef]

  A list of parameter values sent to targets that resolved during the
Automation execution.


=head2 Truncated => Bool

  A boolean value indicating whether the resolved target list is
truncated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
