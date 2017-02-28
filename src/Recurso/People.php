<?php namespace Masnegocio\teamwork\Recurso;

use Masnegocio\teamwork\Recurso\DTO\PeopleDTO;

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
    		
			$i = 1;
			$countPeople = 1;
			while ( $countPeople ) {
				$request = \TeamWorkPm\Factory::build('people');
				$people = $request -> getAll(200,$i) ;
				$i++;
				$countPeople = count($people);
				
				foreach ($people as $key => $objeto) {
					$peopleDTO = new PeopleDTO();
					foreach ($peopleDTO as $keyB => $valueB) {
						$peopleDTO -> $keyB = $objeto -> $keyB;
					}
					$this -> response["body"][] = $peopleDTO;
				}
				
				
				$this -> response["message"] = "Listado de personas completo";
				$this -> response["status"] = "exito";
			}
	    } catch ( \Exception $e) {
			$this -> response["message"] = $e -> getMessage(); 
	    }
	}
}

?>