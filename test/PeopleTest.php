<?php
 // EMpresa\proyecto\carpeta\clase
use Masnegocio\teamwork\Recurso\People;

class PeopleTest extends PHPUnit_Framework_TestCase {
 	
	private $variable = "Hola Mundo";
	
	/*
	 * @test
	 */
	public function testObtener(){
		$autorization = sprintf("BASIC  + window.btoa(%s + :xxx)","asdasdasdas");
		$options = array(
						'body' 		=> array()
						,'config'	=> array()
						,'headers'	=> array()	
						 );
		
		$people = new People();
		$people -> __set("apiKey", "cat952yellow");
		$people -> obtener();
		$response = $people -> __get("response");
		$this -> assertTrue( ($response['status'] == 'exito'));
		
			
	}
	
 
}
