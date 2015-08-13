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
		//var_dump($people -> __get("response"));
		$people -> obtener();
		error_log(print_r(json_encode($people -> __get("response")),true));
		
			
	}
	
 
}
