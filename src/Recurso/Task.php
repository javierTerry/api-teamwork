<?php namespace Masnegocio\teamwork\Recurso;

use Masnegocio\teamwork\Recurso\DTO\TaskDTO;
use Masnegocio\teamwork\Recurso\DTO\ItemsDTO;
class Task {
	use \MNTrait\Comun\MagicMethod;
	use \MNTrait\Comun\Response;
	
	protected $request	= null;
	private $response	= array();
	private $apiKey		="";
	
    public function __construct(){
    	$this -> response = $this -> __response(); 
    }

    public function obtener($idProyecto){
    	
    	try {
    		\TeamWorkPm\Auth::set($this -> apiKey);	
    		$request = \TeamWorkPm\Factory::build('Task_List');
			
			$tasklist = $request -> getByProject($idProyecto) ;
			//error_log(print_r($tasklist ,true));
			if ( count($tasklist) > 0){
				foreach ($tasklist as $key => $objeto) {
					$taskDTO = new TaskDTO();
					foreach ($taskDTO as $keyB => $valueB) {
						$taskDTO -> $keyB = $objeto -> $keyB;
					}
					foreach ($tasklist[$key]['todoItems'] as $keyC => $valueC) {
						if ( count($valueC) > 0){
							$itemDTO = new ItemsDTO();
							foreach ($itemDTO as $keyD => $valueD) {
								$itemDTO -> $keyD = $valueC -> $keyD;
							}
							$taskDTO -> todoItems[] = $itemDTO;				
						}	
					}
					$this -> response["body"][] = $taskDTO;
				}
				
			}
			$this -> response["message"] = "Listado de tareas del proyecto completo";
			$this -> response["status"] = "exito";
    	} catch ( \Exception $e) {
			$this -> response["message"] = $e -> getMessage(); 
    	}

    }
	
	/*
	 * 
	 */
	public function obtenerElemento($idProyecto){
    	
    	try {
    		\TeamWorkPm\Auth::set($this -> apiKey);	
    		$request = \TeamWorkPm\Factory::build('Task_List');
			
			$tasklist = $request -> getByProject($idProyecto) ;
			error_log(print_r($tasklist,true));
			
			/*if ( count($tasklist) > 0){
				foreach ($tasklist as $key => $objeto) {
					$taskDTO = new TaskDTO();
					foreach ($taskDTO as $keyB => $valueB) {
						$taskDTO -> $keyB = $objeto -> $keyB;
					}
					$this -> response["body"][] = $taskDTO;
				}
				
			}
			 * 
			 */
			$this -> response["message"] = "Listado de tareas del proyecto completo";
			$this -> response["status"] = "exito";
    	} catch ( \Exception $e) {
			$this -> response["message"] = $e -> getMessage(); 
    	}
		
		

    }
 
}

?>