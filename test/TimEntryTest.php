<?php
 // EMpresa\proyecto\carpeta\clase
use Masnegocio\teamwork\Recurso\TimeEntry;

class TimeEntryTest extends PHPUnit_Framework_TestCase {
 	
	private $variable = "Hola Mundo";
	
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
		
		$time = new TimeEntry();
		$time -> __set("apiKey", "cat952yellow");
		//var_dump($project -> __get("response"));
		$time -> obtener();
		error_log(print_r(json_encode($time -> __get("response")),true));
		
			
	}
	
 
}
