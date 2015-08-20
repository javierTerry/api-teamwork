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
		
		$project = new Project();
		$project -> __set("apiKey", "cat952yellow");
		$project -> obtener();
		$response = $project -> __get("response");
		error_log(print_r($response['body'],true));
		$this -> assertTrue( ($response['status'] == 'exito'));
		
			
	}
	
 
}
