<?php

use TeamWorkPm\Project\Expense;

use Masnegocio\teamwork\Recurso\DTO\ExpenseDTO;

class ExpenseTest extends PHPUnit_Framework_TestCase {
	/*
	 * PRueba para test
     *
	 * Con esta prueba se evalua elresultado obtenga valores 
	 * @author Christian Hernandez
	 * 
	 */

	public function testVoid(){

		$this -> assertTrue(true);

	}

	/*
	 * Prueba para obtener los registros de Expenses
     *
	 * Con esta prueba se evalua que el resultado obtenga valores (crudo) 
	 * @author Christian Hernandez
	 * @group 
	*/

	public function testObtener(){
		\TeamWorkPm\Auth::set('beer398ankle');	
		$request = \TeamWorkPm\Factory::build('project/Expenses');
		$taskLists = $request -> getAll();
		$conteo = count($taskLists);
		$this->assertGreaterThan(0,$conteo);

	}
	/*
	 * Test para validar estructura DTO
	 + @author Christian Hernandez
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
