<?php
 // EMpresa\proyecto\carpeta\clase
use Masnegocio\teamwork\Recurso\Project;

class ProjectTest extends PHPUnit_Framework_TestCase {
 	
	private $variable = "Hola Mundo";
	
	/*
	 * @test
	 */
	public function testObtener(){
		
		\TeamWorkPm\Auth::set('beer398ankle');	
		$request = \TeamWorkPm\Factory::build('Project');
		$request -> getAll();

		error_log(print_r(count($request -> getAll()),true));
	}
	
 
}
