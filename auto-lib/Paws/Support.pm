
use Paws::API;


package Paws::Support {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'support');
  has version => (is => 'ro', isa => 'Str', default => '2013-04-15');
  has target_prefix => (is => 'ro', isa => 'Str', default => 'AWSSupport_20130415');
  has json_version => (is => 'ro', isa => 'Str', default => "1.1");

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'Paws::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::JsonCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::JsonResponse');

  
  sub AddAttachmentsToSet {
    my $self = shift;
    return $self->do_call('Paws::Support::AddAttachmentsToSet', @_);
  }
  sub AddCommunicationToCase {
    my $self = shift;
    return $self->do_call('Paws::Support::AddCommunicationToCase', @_);
  }
  sub CreateCase {
    my $self = shift;
    return $self->do_call('Paws::Support::CreateCase', @_);
  }
  sub DescribeAttachment {
    my $self = shift;
    return $self->do_call('Paws::Support::DescribeAttachment', @_);
  }
  sub DescribeCases {
    my $self = shift;
    return $self->do_call('Paws::Support::DescribeCases', @_);
  }
  sub DescribeCommunications {
    my $self = shift;
    return $self->do_call('Paws::Support::DescribeCommunications', @_);
  }
  sub DescribeServices {
    my $self = shift;
    return $self->do_call('Paws::Support::DescribeServices', @_);
  }
  sub DescribeSeverityLevels {
    my $self = shift;
    return $self->do_call('Paws::Support::DescribeSeverityLevels', @_);
  }
  sub DescribeTrustedAdvisorCheckRefreshStatuses {
    my $self = shift;
    return $self->do_call('Paws::Support::DescribeTrustedAdvisorCheckRefreshStatuses', @_);
  }
  sub DescribeTrustedAdvisorCheckResult {
    my $self = shift;
    return $self->do_call('Paws::Support::DescribeTrustedAdvisorCheckResult', @_);
  }
  sub DescribeTrustedAdvisorChecks {
    my $self = shift;
    return $self->do_call('Paws::Support::DescribeTrustedAdvisorChecks', @_);
  }
  sub DescribeTrustedAdvisorCheckSummaries {
    my $self = shift;
    return $self->do_call('Paws::Support::DescribeTrustedAdvisorCheckSummaries', @_);
  }
  sub RefreshTrustedAdvisorCheck {
    my $self = shift;
    return $self->do_call('Paws::Support::RefreshTrustedAdvisorCheck', @_);
  }
  sub ResolveCase {
    my $self = shift;
    return $self->do_call('Paws::Support::ResolveCase', @_);
  }
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::Support - Perl Interface to AWS AWS Support

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('...')->new;
  my $res = $obj->Method(Arg1 => $val1, Arg2 => $val2);

=head1 DESCRIPTION



AWS Support

The AWS Support API reference is intended for programmers who need
detailed information about the AWS Support operations and data types.
This service enables you to manage your AWS Support cases
programmatically. It uses HTTP methods that return results in JSON
format.

The AWS Support service also exposes a set of Trusted Advisor features.
You can retrieve a list of checks and their descriptions, get check
results, specify checks to refresh, and get the refresh status of
checks.

The following list describes the AWS Support case management
operations:

=over

=item * B<Service names, issue categories, and available severity
levels. >The DescribeServices and DescribeSeverityLevels operations
return AWS service names, service codes, service categories, and
problem severity levels. You use these values when you call the
CreateCase operation.

=item * B<Case creation, case details, and case resolution.> The
CreateCase, DescribeCases, DescribeAttachment, and ResolveCase
operations create AWS Support cases, retrieve information about cases,
and resolve cases.

=item * B<Case communication.> The DescribeCommunications,
AddCommunicationToCase, and AddAttachmentsToSet operations retrieve and
add communications and attachments to AWS Support cases.

=back

The following list describes the operations available from the AWS
Support service for Trusted Advisor:

=over

=item * DescribeTrustedAdvisorChecks returns the list of checks that
run against your AWS resources.

=item * Using the C<CheckId> for a specific check returned by
DescribeTrustedAdvisorChecks, you can call
DescribeTrustedAdvisorCheckResult to obtain the results for the check
you specified.

=item * DescribeTrustedAdvisorCheckSummaries returns summarized results
for one or more Trusted Advisor checks.

=item * RefreshTrustedAdvisorCheck requests that Trusted Advisor rerun
a specified check.

=item * DescribeTrustedAdvisorCheckRefreshStatuses reports the refresh
status of one or more checks.

=back

For authentication of requests, AWS Support uses Signature Version 4
Signing Process.

See About the AWS Support API in the I<AWS Support User Guide> for
information about how to use this service to create and manage your
support cases, and how to call Trusted Advisor for results of checks on
your resources.










=head1 METHODS

=head2 AddAttachmentsToSet()

  Arguments described in: L<Paws::Support::AddAttachmentsToSet>

  Returns: L<Paws::Support::AddAttachmentsToSetResponse>

  

Adds one or more attachments to an attachment set. If an
C<AttachmentSetId> is not specified, a new attachment set is created,
and the ID of the set is returned in the response. If an
C<AttachmentSetId> is specified, the attachments are added to the
specified set, if it exists.

An attachment set is a temporary container for attachments that are to
be added to a case or case communication. The set is available for one
hour after it is created; the C<ExpiryTime> returned in the response
indicates when the set expires. The maximum number of attachments in a
set is 3, and the maximum size of any attachment in the set is 5 MB.











=head2 AddCommunicationToCase()

  Arguments described in: L<Paws::Support::AddCommunicationToCase>

  Returns: L<Paws::Support::AddCommunicationToCaseResponse>

  

Adds additional customer communication to an AWS Support case. You use
the C<CaseId> value to identify the case to add communication to. You
can list a set of email addresses to copy on the communication using
the C<CcEmailAddresses> value. The C<CommunicationBody> value contains
the text of the communication.

The response indicates the success or failure of the request.

This operation implements a subset of the features of the AWS Support
Center.











=head2 CreateCase()

  Arguments described in: L<Paws::Support::CreateCase>

  Returns: L<Paws::Support::CreateCaseResponse>

  

Creates a new case in the AWS Support Center. This operation is modeled
on the behavior of the AWS Support Center Create Case page. Its
parameters require you to specify the following information:

=over

=item 1. B<IssueType.> The type of issue for the case. You can specify
either "customer-service" or "technical." If you do not indicate a
value, the default is "technical."

=item 2. B<ServiceCode.> The code for an AWS service. You obtain the
C<ServiceCode> by calling DescribeServices.

=item 3. B<CategoryCode.> The category for the service defined for the
C<ServiceCode> value. You also obtain the category code for a service
by calling DescribeServices. Each AWS service defines its own set of
category codes.

=item 4. B<SeverityCode.> A value that indicates the urgency of the
case, which in turn determines the response time according to your
service level agreement with AWS Support. You obtain the SeverityCode
by calling DescribeSeverityLevels.

=item 5. B<Subject.> The B<Subject> field on the AWS Support Center
Create Case page.

=item 6. B<CommunicationBody.> The B<Description> field on the AWS
Support Center Create Case page.

=item 7. B<AttachmentSetId.> The ID of a set of attachments that has
been created by using AddAttachmentsToSet.

=item 8. B<Language.> The human language in which AWS Support handles
the case. English and Japanese are currently supported.

=item 9. B<CcEmailAddresses.> The AWS Support Center B<CC> field on the
Create Case page. You can list email addresses to be copied on any
correspondence about the case. The account that opens the case is
already identified by passing the AWS Credentials in the HTTP POST
method or in a method or function call from one of the programming
languages supported by an AWS SDK.

=back

To add additional communication or attachments to an existing case, use
AddCommunicationToCase.

A successful CreateCase request returns an AWS Support case number.
Case numbers are used by the DescribeCases operation to retrieve
existing AWS Support cases.











=head2 DescribeAttachment()

  Arguments described in: L<Paws::Support::DescribeAttachment>

  Returns: L<Paws::Support::DescribeAttachmentResponse>

  

Returns the attachment that has the specified ID. Attachment IDs are
generated by the case management system when you add an attachment to a
case or case communication. Attachment IDs are returned in the
AttachmentDetails objects that are returned by the
DescribeCommunications operation.











=head2 DescribeCases()

  Arguments described in: L<Paws::Support::DescribeCases>

  Returns: L<Paws::Support::DescribeCasesResponse>

  

Returns a list of cases that you specify by passing one or more case
IDs. In addition, you can filter the cases by date by setting values
for the C<AfterTime> and C<BeforeTime> request parameters. You can set
values for the C<IncludeResolvedCases> and C<IncludeCommunications>
request parameters to control how much information is returned.

Case data is available for 12 months after creation. If a case was
created more than 12 months ago, a request for data might cause an
error.

The response returns the following in JSON format:

=over

=item 1. One or more CaseDetails data types.

=item 2. One or more C<NextToken> values, which specify where to
paginate the returned records represented by the C<CaseDetails>
objects.

=back











=head2 DescribeCommunications()

  Arguments described in: L<Paws::Support::DescribeCommunications>

  Returns: L<Paws::Support::DescribeCommunicationsResponse>

  

Returns communications (and attachments) for one or more support cases.
You can use the C<AfterTime> and C<BeforeTime> parameters to filter by
date. You can use the C<CaseId> parameter to restrict the results to a
particular case.

Case data is available for 12 months after creation. If a case was
created more than 12 months ago, a request for data might cause an
error.

You can use the C<MaxResults> and C<NextToken> parameters to control
the pagination of the result set. Set C<MaxResults> to the number of
cases you want displayed on each page, and use C<NextToken> to specify
the resumption of pagination.











=head2 DescribeServices()

  Arguments described in: L<Paws::Support::DescribeServices>

  Returns: L<Paws::Support::DescribeServicesResponse>

  

Returns the current list of AWS services and a list of service
categories that applies to each one. You then use service names and
categories in your CreateCase requests. Each AWS service has its own
set of categories.

The service codes and category codes correspond to the values that are
displayed in the B<Service> and B<Category> drop-down lists on the AWS
Support Center Create Case page. The values in those fields, however,
do not necessarily match the service codes and categories returned by
the C<DescribeServices> request. Always use the service codes and
categories obtained programmatically. This practice ensures that you
always have the most recent set of service and category codes.











=head2 DescribeSeverityLevels()

  Arguments described in: L<Paws::Support::DescribeSeverityLevels>

  Returns: L<Paws::Support::DescribeSeverityLevelsResponse>

  

Returns the list of severity levels that you can assign to an AWS
Support case. The severity level for a case is also a field in the
CaseDetails data type included in any CreateCase request.











=head2 DescribeTrustedAdvisorCheckRefreshStatuses()

  Arguments described in: L<Paws::Support::DescribeTrustedAdvisorCheckRefreshStatuses>

  Returns: L<Paws::Support::DescribeTrustedAdvisorCheckRefreshStatusesResponse>

  

Returns the refresh status of the Trusted Advisor checks that have the
specified check IDs. Check IDs can be obtained by calling
DescribeTrustedAdvisorChecks.











=head2 DescribeTrustedAdvisorCheckResult()

  Arguments described in: L<Paws::Support::DescribeTrustedAdvisorCheckResult>

  Returns: L<Paws::Support::DescribeTrustedAdvisorCheckResultResponse>

  

Returns the results of the Trusted Advisor check that has the specified
check ID. Check IDs can be obtained by calling
DescribeTrustedAdvisorChecks.

The response contains a TrustedAdvisorCheckResult object, which
contains these three objects:

=over

=item * TrustedAdvisorCategorySpecificSummary

=item * TrustedAdvisorResourceDetail

=item * TrustedAdvisorResourcesSummary

=back

In addition, the response contains these fields:

=over

=item * B<Status.> The alert status of the check: "ok" (green),
"warning" (yellow), "error" (red), or "not_available".

=item * B<Timestamp.> The time of the last refresh of the check.

=item * B<CheckId.> The unique identifier for the check.

=back











=head2 DescribeTrustedAdvisorChecks()

  Arguments described in: L<Paws::Support::DescribeTrustedAdvisorChecks>

  Returns: L<Paws::Support::DescribeTrustedAdvisorChecksResponse>

  

Returns information about all available Trusted Advisor checks,
including name, ID, category, description, and metadata. You must
specify a language code; English ("en") and Japanese ("ja") are
currently supported. The response contains a
TrustedAdvisorCheckDescription for each check.











=head2 DescribeTrustedAdvisorCheckSummaries()

  Arguments described in: L<Paws::Support::DescribeTrustedAdvisorCheckSummaries>

  Returns: L<Paws::Support::DescribeTrustedAdvisorCheckSummariesResponse>

  

Returns the summaries of the results of the Trusted Advisor checks that
have the specified check IDs. Check IDs can be obtained by calling
DescribeTrustedAdvisorChecks.

The response contains an array of TrustedAdvisorCheckSummary objects.











=head2 RefreshTrustedAdvisorCheck()

  Arguments described in: L<Paws::Support::RefreshTrustedAdvisorCheck>

  Returns: L<Paws::Support::RefreshTrustedAdvisorCheckResponse>

  

Requests a refresh of the Trusted Advisor check that has the specified
check ID. Check IDs can be obtained by calling
DescribeTrustedAdvisorChecks.

The response contains a TrustedAdvisorCheckRefreshStatus object, which
contains these fields:

=over

=item * B<Status.> The refresh status of the check: "none", "enqueued",
"processing", "success", or "abandoned".

=item * B<MillisUntilNextRefreshable.> The amount of time, in
milliseconds, until the check is eligible for refresh.

=item * B<CheckId.> The unique identifier for the check.

=back











=head2 ResolveCase()

  Arguments described in: L<Paws::Support::ResolveCase>

  Returns: L<Paws::Support::ResolveCaseResponse>

  

Takes a C<CaseId> and returns the initial state of the case along with
the state of the case after the call to ResolveCase completed.











=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
