<?php
 // EMpresa\proyecto\carpeta\clase
use Masnegocio\teamwork\Recurso\Compania;

class CompaniaTest extends PHPUnit_Framework_TestCase {
 	
	private $variable = "Hola Mundo";
	
	/*
	 * @test
	 */
	public function testObtener(){
			$autorization = sprintf("BASIC  + window.btoa(%s + :xxx)","asdasdasdas");
			$options = array(
							'body' 		=> array()
							,'config'	=> array()
							,'headers'	=> array("Authorization"	=> "BASIC  + window.btoa(key + :xxx)")	
							 );
			
			$compania = new Compania();
			$compania -> __set("apiKey", "cat952yellow");
			
			$compania -> obtener();
			$response = $compania -> __get("response");
			
			
			assertTrue($response['status'] == 'exito');
			assertThat(0, count($response['body']));
			
			
			
			
	}
	
 
}
