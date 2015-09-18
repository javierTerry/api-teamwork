<?php
 // EMpresa\proyecto\carpeta\clase
use Masnegocio\teamwork\Recurso\Expenses;

class ExpenseTest extends PHPUnit_Framework_TestCase {
 		
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
		
		$expense = new Expenses();
		$expense -> __set("apiKey", "cat952yellow");
		//var_dump($project -> __get("response"));
		$expense -> obtener();
		$response = $expense -> __get("response");
		error_log(print_r($response,true));
		
		$this -> assertTrue($response['status'] == 'exito');
		$this -> assertGreaterThan(count($response['body']), 0);
	}
}
