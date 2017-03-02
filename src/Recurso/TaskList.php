<?php namespace Masnegocio\teamwork\Recurso;

use Masnegocio\teamwork\Recurso\DTO\TaskDTO;
class TaskList {
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
			
			$tasklist = $request -> getByProject($idProyecto,array('status' =>'all')) ;
			if ( count($tasklist) > 0){
				foreach ($tasklist as $key => $objeto) {
					$taskDTO = new TaskDTO();
					foreach ($taskDTO as $keyB => $valueB) {
						$taskDTO -> $keyB = $objeto -> $keyB;
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
}

?>
