<?php namespace Masnegocio\teamwork\Recurso;

use Masnegocio\teamwork\Recurso\DTO\ExpenseDTO;

class Expenses {
	use \MNTrait\Comun\MagicMethod;
	use \MNTrait\Comun\Response;
	
	protected $request	= null;
	private $response	= array();
	private $apiKey		="";
	
    public function __construct(){
    	$this -> response = $this -> __response(); 
    }

    public function obtener($idProyecto = 0){
    	
    	try {
    		\TeamWorkPm\Auth::set($this -> apiKey);	
    		$request = \TeamWorkPm\Factory::build('Project/Expenses');
			
			$Expenselist = $request -> getAll();
			//error_log(print_r($Expenselist ,true));
			$this -> response["status"] = "exito";
			if ( count($Expenselist) > 0){
				foreach ($Expenselist as $key => $objeto) {
					$ExpenseDTO = new ExpenseDTO();
					foreach ($ExpenseDTO as $keyB => $valueB) {
						$ExpenseDTO -> $keyB = $objeto -> $keyB;
					}
					foreach ($Expenselist[$key]['todoItems'] as $keyC => $valueC) {
						if ( count($valueC) > 0){
							$itemDTO = new ItemsDTO();
							foreach ($itemDTO as $keyD => $valueD) {
								$itemDTO -> $keyD = $valueC -> $keyD;
							}
							$ExpenseDTO -> todoItems[] = $itemDTO;				
						}	
					}
					$this -> response["body"][] = $ExpenseDTO;
				}
				$this -> response["message"] = "Listado de gastos del proyecto completo";
			} else {
				$this -> response["body"] = array();	
				$this -> response["message"] = "No hay gastos relacionados";
			}
			
			
    	} catch ( \Exception $e) {
    		error_log(print_r($e,true));
			$this -> response["message"] = $e -> getMessage(); 
    	}

    }
	
	
}//fin de la clase

?>