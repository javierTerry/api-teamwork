<?php
 // EMpresa\proyecto\carpeta\clase
use Masnegocio\teamwork\Recurso\Task;

class TaskListTest extends PHPUnit_Framework_TestCase {
 		
	/*
	 * PRueba para obtener la lista de tareas de un proyecto
     *
	 * Con esta prueba se evalua que el estatus sea exito y que el 'body' prefrentemente 
	 * @author Christian Hernandez
	 * @test
	 */
	public function testObtener(){
		
		try {
			\TeamWorkPm\Auth::set('beer398ankle');	
			$request = \TeamWorkPm\Factory::build('Task_List');

			$taskLists = $request -> getByProject(131782,array('status' =>'all'));
			error_log(print_r(count($taskLists),true));
			die();
			foreach ($taskLists as $key => $value) {
				# code...
				///error_log(print_r($key,true));
				//die();
			}
			
			/*
    		$obj = new Task();
			$obj -> __set("apiKey", 'beer398ankle');
    		$obj -> obtener();
    		
    		$tasks = count($obj -> __get("response")["body"]);
    		error_log($peoples);
    		if ( $peoples < 1)
    			throw new Exception( "Sin personas registradas", 1);
    			
    		$this->assertTrue(true);
			*/
    	} catch ( \Exception $e) {
			error_log(print_r($e -> getMessage(),true));
			$this->assertTrue(false);
    	}
	}
}
