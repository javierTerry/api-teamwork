<?php
 // EMpresa\proyecto\carpeta\clase
use Masnegocio\teamwork\Recurso\Task;

class TaskTest extends PHPUnit_Framework_TestCase {
 		
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
		
		$task = new Task();
		
		$task -> obtener(115994);
		$response = $task -> __get("response");
		
		$this -> assertTrue($response['status'] == 'exito');
	}
}
