use strict;
use warnings;
use Module::Build;

# my $class = Module::Build->subclass(
# 	class 	=> 'Pete::Foo',
# 	code	=> q{
# 		sub ACTION_foo {
# 			print "I am the FOO!\n";
# 			BEGIN {
# 				eval 'use Module::Build::Debian';
# 				print "Using Debian build\n";
# 			}
# 		}
# 	},
# );

my $builder = Module::Build->new(
    module_name         => 'Conan',
    license             => 'perl',
    dist_author         => 'Peter Blair <pblair@cpan.org>',
    dist_abstract	=> 'Building and promoting images a xen cloud',
    build_requires => {
        'Test::More' => 0.10,
	'File::Rsync' => 0.42,
    },
    configure_requires => { 
	'Module::Build' => 0.38 ,
    },
);

$builder->create_build_script();
