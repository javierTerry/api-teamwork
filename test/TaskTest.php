<?php
 // EMpresa\proyecto\carpeta\clase
use Masnegocio\teamwork\Recurso\Task;

class TaskTest extends PHPUnit_Framework_TestCase {
 	
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
		
		$task = new Task();
		$task -> __set("apiKey", "cat952yellow");
		//var_dump($project -> __get("response"));
		$task -> obtener();
		error_log(print_r(json_encode($task -> __get("response")),true));
		
			
	}
	
 
}
