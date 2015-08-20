<?php namespace Masnegocio\teamwork\Recurso;


class People {
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
			$people = $request -> getAll() ;
			if ( count($people) > 0){
				foreach ($people as $key => $objeto) {
					$peopleDTO = new PeopleDTO();
					foreach ($peopleDTO as $keyB => $valueB) {
						$peopleDTO -> $keyB = $objeto -> $keyB;
					}
					$this -> response["body"][] = $peopleDTO;
				}
				
			} else {
				$this -> response['body'] = array();
			}
			$this -> response["message"] = "Listado de companias completo";
			$this -> response["status"] = "exito";
    	} catch ( \Exception $e) {
			$this -> response["message"] = $e -> getMessage(); 
    	}
		
		

    }
 
}

/**
 * PeopleDTO
 */
class PeopleDTO {
	
	public $name 		="";
	public $industry	= "";
	public $website		= "";
	public $country		= "";
	public $countrycode	= "";
	public $cid			= "";
	public $id			= "";
}

?>