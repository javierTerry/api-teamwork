<?php
 // EMpresa\proyecto\carpeta\clase
use Masnegocio\teamwork\Recurso\Project;

class ProjectTest extends PHPUnit_Framework_TestCase {
 	
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
		//var_dump($project -> __get("response"));
		$project -> obtener();
		error_log(print_r(json_encode($project -> __get("response")),true));
		
			
	}
	
 
}