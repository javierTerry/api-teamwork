<?php namespace Masnegocio\teamwork\Recurso;

use Masnegocio\teamwork\Recurso\DTO\TasksDTO;

class Task {
	use \MNTrait\Comun\MagicMethod;
	use \MNTrait\Comun\Response;
	protected $request	= null;
	private $response	= array();
	private $apiKey		="";
	
    public function __construct(){
    	$this -> response = $this -> __response(); 
    }

    public function obtener($id){
    	
    	try {
    		\TeamWorkPm\Auth::set($this -> apiKey);	
    		$request = \TeamWorkPm\Factory::build('task');
			
			$i = 1;
			$flagRun = 250;
			while ( $flagRun > 249) {
				$tasklist = $taskLists = $request -> getByTaskList($id, 'all', array('page' => $i));
				$flagRun =count($tasklist);
				error_log($i);
				$i++;

				foreach ($tasklist as $key => $objeto) {
					$itemDTO = new TasksDTO();
					foreach ($itemDTO as $keyA => $valueA) {
						$itemDTO -> $keyA = $objeto -> $keyA;
					}//fin foreach
					$this -> response["body"][] = $itemDTO;
					
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
