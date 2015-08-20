<?php
 // EMpresa\proyecto\carpeta\clase
use Masnegocio\teamwork\Recurso\CategoryProject;

class CategoryProjectTest extends PHPUnit_Framework_TestCase {
 	
	private $variable = "Hola Mundo";
	
	/*
	 * 
	 */
	public function testObtener(){
		$autorization = sprintf("BASIC  + window.btoa(%s + :xxx)","asdasdasdas");
		$options = array(
						'body' 		=> array()
						,'config'	=> array()
						,'headers'	=> array()	
						 );
		
		$project = new CategoryProject();
		$project -> __set("apiKey", "cat952yellow");
		//var_dump($project -> __get("response"));
		$project -> obtener();
		$response = $project -> __get("response");
		$this -> assertTrue($response['status'] == 'exito');
			
	}
	
 
}
