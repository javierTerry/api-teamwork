<?php
 // EMpresa\proyecto\carpeta\clase
use Masnegocio\teamwork\Comun\MyClass;

class MyClassTest extends PHPUnit_Framework_TestCase {
 	
	private $variable = "Hola Mundo";
	
	/*
	 * @test
	 */
	public function testCosntructor(){
		$request = new MyClass($this -> variable);
		var_dump($request -> getVariable());	
	}
	
 
}
