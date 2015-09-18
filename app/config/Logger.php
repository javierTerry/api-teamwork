
<?php
use Monolog\Logger;
use Monolog\Handler\StreamHandler;

/**
 * Class to configure and return a Monolog instance
 *
 * @author Jeremy Cook
 * @author Christian Hernandez 
 */
class LoggingHelper
{
    /**
     * Monolog instance to hold and use
     * @var Monolog\Logger
     */
    static protected $instance;
    /**
     * Method to return the Monolog instance
     *
     * @return Monolog\Logger
     */
    static public function getLogger()
    {
        if (! self::$instance) {
            self::configureInstance();
        }
        return self::$instance;
    }
    /**
     * Method to configure the Monolog instance
     *
     * @return void
     */
    static protected function configureInstance()
    {
    	$name = date("Y-m-d").'_teamwork.log';
        self::$instance = new Logger($name);
        self::$instance->pushHandler(new StreamHandler(PATH_LOG_.$name, Logger::INFO));
    }
}	