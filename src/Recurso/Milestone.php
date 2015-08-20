<?php namespace Masnegocio\teamwork\Recurso;

use Masnegocio\teamwork\Recurso\DTO\MilestoneDTO;
 
class Milestone {
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
    		$request = \TeamWorkPm\Factory::build('milestone');
			$response = $request -> getAll() ;
			if ( count($response) > 0){
				foreach ($response as $key => $objeto) {
					$milestoneDTO = new MilestoneDTO();
					foreach ($milestoneDTO as $keyB => $valueB) {
						$milestoneDTO -> $keyB = $objeto -> $keyB;
					}
					$this -> response["body"][] = $milestoneDTO;
				}
				
			} else {
				$this -> response['body'] = array();
			}
			$this -> response["message"] = "Listado de milestone completo";
			$this -> response["status"] = "exito";
    	} catch ( \Exception $e) {
			$this -> response["message"] = $e -> getMessage(); 
    	}
		
		

    }
 
}
?>