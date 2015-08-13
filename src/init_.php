<?

/*
*
*/
namespace Base;

require_once("../dependencies/vendor/autoload.php");

use Slim\Slim;

$app = new Slim();
$app->get('/hello/:name', function ($name) {
    echo "Hello, $name";
});
$app->run();
?>

