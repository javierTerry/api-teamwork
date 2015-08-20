<?php
 // EMpresa\proyecto\carpeta\clase
use Masnegocio\teamwork\Recurso\Task;

class TaskTest extends PHPUnit_Framework_TestCase {
 		
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
		$task -> obtener(115994);
		$response = $task -> __get("response");
		error_log(print_r($response,true));
		
		$this -> assertTrue($response['status'] == 'exito');
	}
	
	/*
	 * @test
	 */
	public function tbtenerElemento(){
		$autorization = sprintf("BASIC  + window.btoa(%s + :xxx)","asdasdasdas");
		$options = array(
						'body' 		=> array()
						,'config'	=> array()
						,'headers'	=> array()	
						 );
		
		$task = new Task();
		$task -> __set("apiKey", "cat952yellow");
		$task -> obtenerElemento(115994);
		$response = $task -> __get("response");
		error_log(print_r($response,true));
		$this -> assertTrue($response['status'] == 'exito');
			
	}
	
 
}
