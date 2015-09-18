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
    		\TeamWorkPm\Auth::set($this-> apiKey);	
    		$request = \TeamWorkPm\Factory::build('tags');
			$tags = $request -> getAll() ;
			$this -> response["status"] = "exito";
			
			if ( count($tags) > 0){
				foreach ($tags as $key => $objeto) {
					$tagDTO = new TagDTO();
					foreach ($tagDTO as $keyB => $valueB) {
						$tagDTO -> $keyB = $objeto -> $keyB;
					}
					$this -> response["body"][] = $tagDTO;
				}
				$this -> response["message"] = "Listado de etiquetas completo";
			} else {
				$this -> response["body"] = array();	
				$this -> response["message"] = "No hay etiquetas relacionadas";
			}
    	} catch ( \Exception $e) {
			$this -> response["message"] = $e -> getMessage(); 
    	}
    }
 
}

?>