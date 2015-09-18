<?php namespace Masnegocio\teamwork\Recurso;

use Masnegocio\teamwork\Recurso\DTO\ProjectDTO;

class Project {
	use \MNTrait\Comun\MagicMethod;
	use \MNTrait\Comun\Response;
	
	protected $request	= null;
	private $response	= array();
	private $apiKey		="";
	
    public function __construct(){
    	$this -> response = $this -> __response(); 
    }

    public function obtener(){
    	
    	try {
    		\TeamWorkPm\Auth::set($this -> apiKey);	
    		$request = \TeamWorkPm\Factory::build('Project');
			$project = $request -> getAll() ;
			if ( count($project) > 0){
				foreach ($project as $key => $objeto) {
					$projectDTO = new ProjectDTO();
					foreach ($projectDTO as $keyB => $valueB) {
						$projectDTO -> $keyB = $objeto -> $keyB;
					}
					$this -> response["body"][] = $projectDTO;
				}
				
			}
			$this -> response["message"] = "Listado de companias completo";
			$this -> response["status"] = "exito";
    	} catch ( \Exception $e) {
			$this -> response["message"] = $e -> getMessage(); 
    	}
		
		

    }
 
}

?>