use lib 'lib';
use Test::More tests => 1;
use Conan::Deploy;

use_ok( 'Conan::Deploy' );

__END__

my $deploy = Conan::Deploy->new(
	#srcimagebase => '/tmp/base/qa',
	#targetimagebase => '/tmp/base/prod',
);

$deploy->promote_image('test_0.0001');
