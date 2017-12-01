
package Paws::Comprehend::BatchDetectSentiment;
  use Moose;
  has LanguageCode => (is => 'ro', isa => 'Str', required => 1);
  has TextList => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchDetectSentiment');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Comprehend::BatchDetectSentimentResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::BatchDetectSentiment - Arguments for method BatchDetectSentiment on L<Paws::Comprehend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchDetectSentiment on the 
Amazon Comprehend service. Use the attributes of this class
as arguments to method BatchDetectSentiment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchDetectSentiment.

As an example:

  $service_obj->BatchDetectSentiment(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> LanguageCode => Str

The language of the input documents. All documents must be in the same
language.



=head2 B<REQUIRED> TextList => ArrayRef[Str|Undef]

A list containing the text of the input documents. The list can contain
a maximum of 25 documents. Each document must contain fewer that 5,000
bytes of UTF-8 encoded characters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchDetectSentiment in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
