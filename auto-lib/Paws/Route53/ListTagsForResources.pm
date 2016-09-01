
package Paws::Route53::ListTagsForResources;
  use Moose;
  has ResourceIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has ResourceType => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ResourceType' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTagsForResources');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/tags/{ResourceType}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::ListTagsForResourcesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ListTagsForResourcesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceIds => ArrayRef[Str]

A complex type that contains the ResourceId element for each resource
for which you want to get a list of tags.



=head2 B<REQUIRED> ResourceType => Str

The type of the resources.

=over

=item *

The resource type for health checks is C<healthcheck>.

=item *

The resource type for hosted zones is C<hostedzone>.

=back


Valid values are: C<"healthcheck">, C<"hostedzone">


=cut

