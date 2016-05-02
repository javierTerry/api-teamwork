<?php namespace Masnegocio\teamwork\Recurso;

/*
 * 
 */
 use Masnegocio\teamwork\Recurso\DTO\CompanyDTO;
 
class Compania {
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
    		$request = \TeamWorkPm\Factory::build('company');
			$compania = json_decode($request -> getAll()) ;
			
			if ( count($compania) > 0){
				foreach ($compania as $key => $objeto) {
					$companiaDTO = new CompanyDTO();
					foreach ($companiaDTO as $keyB => $valueB) {
						$companiaDTO -> $keyB = $objeto -> $keyB;
					}
					$this -> response["body"][] = $companiaDTO;
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