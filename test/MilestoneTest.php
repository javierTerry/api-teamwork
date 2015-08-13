<?php
 // EMpresa\proyecto\carpeta\clase
use Masnegocio\teamwork\Recurso\Milestone;

class MilestoneTest extends PHPUnit_Framework_TestCase {
 	
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
		
		$milestone = new Milestone();
		$milestone -> __set("apiKey", "cat952yellow");
		//var_dump($project -> __get("response"));
		$milestone -> obtener();
		error_log(print_r(json_encode($milestone -> __get("response")),true));
		
			
	}
	
 
}
