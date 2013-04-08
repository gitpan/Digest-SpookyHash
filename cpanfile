#!perl
requires 'perl' => '5.008003';
requires 'XSLoader';
requires 'Exporter';

on 'configure' => sub {
    requires 'Module::Build::Pluggable';
    requires 'Module::Build::Pluggable::GithubMeta';
    requires 'Module::Build::Pluggable::CPANfile';
    requires 'Module::Build::Pluggable::XSUtil' => '1.01';
};

on 'build' => sub {
};

on 'test' => sub {
    requires 'Test::More'     => '0.98';
};

on 'develop' => sub {
    requires 'Test::Spelling';
    requires 'Test::Perl::Critic';
    requires 'Test::Pod';
    requires 'Test::Pod::Coverage';
    requires 'Software::License';
};
