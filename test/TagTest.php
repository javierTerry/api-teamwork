<?php
 // EMpresa\proyecto\carpeta\clase
use Masnegocio\teamwork\Recurso\Tag;

class TagTest extends PHPUnit_Framework_TestCase {
 	
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
		
		$tag = new Tag();
		$tag -> __set("apiKey", "cat952yellow");
		//var_dump($project -> __get("response"));
		$tag -> obtener();
		error_log(print_r(json_encode($tag -> __get("response")),true));
		
			
	}
	
 
}
