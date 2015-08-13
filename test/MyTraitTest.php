<?php
 

class MyTraitTest extends PHPUnit_Framework_TestCase {
 	use Masnegocio\Comun\Response;

	
	private $isMagic = false;
 	
 	public function testResponse(){
 		$this -> assertTrue(is_array($this -> __response()));
		
 	}
	
	public function magicMethod(){
		
		$this -> __set("isMagic", true);
 		$this -> assertTrue($this -> isMagic);
 	}
 
}
