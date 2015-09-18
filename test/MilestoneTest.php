<?php
 // EMpresa\proyecto\carpeta\clase
use Masnegocio\teamwork\Recurso\Milestone;

class MilestoneTest extends PHPUnit_Framework_TestCase {

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
		
		$milestone = new Milestone();
		$milestone -> __set("apiKey", "cat952yellow");
		//var_dump($project -> __get("response"));
		$milestone -> obtener();
		$response = $milestone -> __get("response");
		error_log(print_r($response['body'],true));
		$this -> assertTrue($response['status'] == 'exito');
		
			
	}
	
 
}
