<?php

use Masnegocio\teamwork\Recurso\Task;

class TaskTest extends PHPUnit_Framework_TestCase {
 		
	/*
	 * PRueba para obtener la lista de tareas de un proyecto
     *
	 * Con esta prueba se evalua elresultado obtenga valores 
	 * @author Christian Hernandez
	 * @group ignored
	 */
	public function testObtener(){
		\TeamWorkPm\Auth::set('beer398ankle');	
		$request = \TeamWorkPm\Factory::build('task');
		//$taskLists = $request -> getByTaskList(426075);
		$taskLists = $request -> getByTaskList(426075);
		//426075
		//503702 
		$conteo = count($taskLists);
		$this->assertGreaterThan(251,$conteo);

	}
	/*
	 * @depends testObtener
	 */
	public function testPages(){
		\TeamWorkPm\Auth::set('beer398ankle');	
		$request = \TeamWorkPm\Factory::build('task');
		//$taskLists = $request -> getByTaskList(426075);
		$taskLists = $request -> getByTaskList(426075, 'all', array('page' => 2));
		//426075
		//503702 
		$conteo = count($taskLists);
		$this->assertGreaterThan(0,$conteo);
	}
}
p