<?php namespace Masnegocio\teamwork\Recurso;

use Masnegocio\teamwork\Recurso\DTO;

class Tag {
	
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
    		$request = \TeamWorkPm\Factory::build('tags');
			$tags = (string) $request -> getAll() ;
			error_log(print_r($tags,true));
			if ( count($project) > 0){
				foreach ($project as $key => $objeto) {
					$tagDTO = new TagDTO();
					foreach ($tagDTO as $keyB => $valueB) {
						$tagDTO -> $keyB = $objeto -> $keyB;
					}
					$this -> response["body"][] = $tagDTO;
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