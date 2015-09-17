<?php

/**
 * Class to configure the DB
 *
  * @author Christian Hernandez 
 */
class Conexion
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

    /*
        Get an instance of the Database
        @return Instance
    */
    public static function getInstance() {
        if(!self::$instance) { // If no instance then make one
            self::$instance = new self();
        }
        print_r("return conexion \n");
        return self::$instance;
    }
    // Constructor
    private function __construct() {
        print_r("creado conexion");
        self::$instance = new \Slim\PDO\Database(BD_DNS_, BD_USER_, BD_PWD_);
    }

}