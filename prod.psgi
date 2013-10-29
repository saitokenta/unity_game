use lib 'lib';

use Plack::Builder;
use Game2D;
use Game2D::Models;

my $app = Game2D->new;
$app->setup;

# preload models
my $models = Game2D::Models->instance;
$models->load_all;

my $app = Game2D->new;
builder {
    $app->handler;
};
