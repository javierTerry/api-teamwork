<?php
 // EMpresa\proyecto\carpeta\clase
use Masnegocio\teamwork\Recurso\Tag;

class TagsTest extends PHPUnit_Framework_TestCase {
 		
	/*
	 * PRueba para obtener la lista de tareas de un proyecto
     *
	 * Con esta prueba se evalua que el estatus sea exito y que el 'body' prefrentemente 
	 * @author Christian Hernandez
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
		$tag -> obtener();
		
		$response = $tag -> __get("response");
		error_log(print_r($response,true));
		$this -> assertTrue($response['status'] == 'exito');
		$this -> assertGreaterThan(count($response['body']), 0);
		
	}
}
