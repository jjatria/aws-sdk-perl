
package Paws::LexModels::GetIntentResponse;
  use Moose;
  has Checksum => (is => 'ro', isa => 'Str');
  has ConclusionStatement => (is => 'ro', isa => 'Paws::LexModels::Statement');
  has ConfirmationPrompt => (is => 'ro', isa => 'Paws::LexModels::Prompt');
  has CreatedDate => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DialogCodeHook => (is => 'ro', isa => 'Paws::LexModels::CodeHook');
  has FollowUpPrompt => (is => 'ro', isa => 'Paws::LexModels::FollowUpPrompt');
  has FulfillmentActivity => (is => 'ro', isa => 'Paws::LexModels::FulfillmentActivity');
  has LastUpdatedDate => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has ParentIntentSignature => (is => 'ro', isa => 'Str');
  has RejectionStatement => (is => 'ro', isa => 'Paws::LexModels::Statement');
  has SampleUtterances => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Slots => (is => 'ro', isa => 'ArrayRef[Paws::LexModels::Slot]');
  has Version => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::GetIntentResponse

=head1 ATTRIBUTES


=head2 Checksum => Str

Checksum of the intent.


=head2 ConclusionStatement => L<Paws::LexModels::Statement>

After the Lambda function specified in the C<fulfillmentActivity>
element fulfills the intent, Amazon Lex conveys this statement to the
user.


=head2 ConfirmationPrompt => L<Paws::LexModels::Prompt>

If defined in the bot, Amazon Lex uses prompt to confirm the intent
before fulfilling the user's request. For more information, see .


=head2 CreatedDate => Str

The date that the intent was created.


=head2 Description => Str

A description of the intent.


=head2 DialogCodeHook => L<Paws::LexModels::CodeHook>

If defined in the bot, Amazon Amazon Lex invokes this Lambda function
for each user input. For more information, see .


=head2 FollowUpPrompt => L<Paws::LexModels::FollowUpPrompt>

If defined in the bot, Amazon Lex uses this prompt to solicit
additional user activity after the intent is fulfilled. For more
information, see .


=head2 FulfillmentActivity => L<Paws::LexModels::FulfillmentActivity>

Describes how the intent is fulfilled. For more information, see .


=head2 LastUpdatedDate => Str

The date that the intent was updated. When you create a resource, the
creation date and the last updated date are the same.


=head2 Name => Str

The name of the intent.


=head2 ParentIntentSignature => Str

A unique identifier for a built-in intent.


=head2 RejectionStatement => L<Paws::LexModels::Statement>

If the user answers "no" to the question defined in
C<confirmationPrompt>, Amazon Lex responds with this statement to
acknowledge that the intent was canceled.


=head2 SampleUtterances => ArrayRef[Str|Undef]

An array of sample utterances configured for the intent.


=head2 Slots => ArrayRef[L<Paws::LexModels::Slot>]

An array of intent slots configured for the intent.


=head2 Version => Str

The version of the intent.


=head2 _request_id => Str


=cut
