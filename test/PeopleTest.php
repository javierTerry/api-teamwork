<?php
 // EMpresa\proyecto\carpeta\clase
use Masnegocio\teamwork\Recurso\People;

class PeopleTest extends PHPUnit_Framework_TestCase {
	/*
	 * @test
	 */
	public function testObtener(){
		
    	try {
    		$obj = new People();
			$obj -> __set("apiKey", 'beer398ankle');
    		$obj -> obtener();
    		
    		$peoples = count($obj -> __get("response")["body"]);
    		error_log($peoples);
    		if ( $peoples < 1)
    			throw new Exception( "Sin personas registradas", 1);
    			
    		$this->assertTrue(true);
	
    	} catch ( \Exception $e) {
			error_log(print_r($e -> getMessage(),true));
			$this->assertTrue(false);
    	}
		
			
	} 
}