requires 'perl' => '5.010001';
requires 'Moose';
requires 'MooseX::ClassAttribute';
requires 'HTTP::Tiny';
requires 'Throwable::Error';
requires 'Data::Compare';
requires 'URI';
requires 'Net::Amazon::Signature::V3';
requires 'Net::Amazon::Signature::V4';
requires 'JSON::MaybeXS';
requires 'XML::Simple';
requires 'IO::Socket::SSL';
requires 'DateTime';
requires 'DateTime::Format::ISO8601';
requires 'URL::Encode';
requires 'URL::Encode::XS';
requires 'URI::Template';
requires 'Config::AWS';
requires 'Digest::SHA';
# For the paws CLI
requires 'Hash::Flatten';
requires 'MooseX::Getopt';
requires 'ARGV::Struct';
requires 'Module::Find';
requires 'Getopt::Long';
recommends 'Browser::Open';
requires 'File::HomeDir';
requires 'String::CRC32';
requires 'Path::Tiny' => '0.017';
suggests "Future::Mojo";

on 'develop' => sub {
  requires 'Template';
  requires 'Pod::HTML2Pod';
  requires 'Dist::Zilla';
  requires 'Dist::Zilla::Plugin::Prereqs::FromCPANfile';
  requires 'Dist::Zilla::Plugin::VersionFromMainModule';
  requires 'Dist::Zilla::PluginBundle::Git';
  requires 'Dist::Zilla::Plugin::UploadToCPAN';
  requires 'Dist::Zilla::Plugin::RunExtraTests';
  requires 'Dist::Zilla::Plugin::Test::Compile';
  requires 'Dist::Zilla::Plugin::Git::Check';
  requires 'Dist::Zilla::Plugin::Git::GatherDir';
  requires 'Dist::Zilla::Plugin::Git::Push';
  requires 'Dist::Zilla::Plugin::Git::Tag';
  requires 'Carp::Always';
  requires 'Devel::Cover';
  requires 'Data::Printer';
  requires 'Carp::Always';
  requires 'Test::Pod';
  requires 'Devel::CoverReport';
  # For developing / testing the pluggable callers
  requires 'Mojolicious';
  requires 'Future::Mojo', '>= 0.003';
  requires 'EV';
  requires 'LWP::UserAgent';
  requires 'Furl';
};
on 'test' => sub {
  requires 'File::Slurper';
  requires 'YAML';
  requires 'Test::More';
  requires 'Test::Timer';
  requires 'Test::Exception';
  requires 'Test::Warnings';
  requires 'Class::Unload';
};
