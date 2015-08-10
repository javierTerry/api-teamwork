<?php
 

class MyTraitTest extends PHPUnit_Framework_TestCase {
 	use MNTrait\Comun\Response;
	use MNTrait\Comun\MagicMethod;
	
	private $isMagic = false;
 	
 	public function testResponse(){
 		$this -> assertTrue(is_array($this -> __response()));
		
 	}
	
	public function testMagicMethod(){
		
		$this -> __set("isMagic", true);
 		$this -> assertTrue($this -> isMagic);
 	}
 
}
