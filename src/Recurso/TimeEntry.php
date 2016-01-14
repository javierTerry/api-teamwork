<?php namespace Masnegocio\teamwork\Recurso;

use Masnegocio\teamwork\Recurso\DTO\TimeDTO;

class TimeEntry {
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
    		$request = \TeamWorkPm\Factory::build('time');
			$time = $request -> getAll() ;
<<<<<<< HEAD
			
=======
>>>>>>> develop
			if ( count($time) > 0){
				foreach ($time as $key => $objeto) {
					$timeDTO = new TimeDTO();
					foreach ($timeDTO as $keyB => $valueB) {
						$timeDTO -> $keyB = $objeto -> $keyB;
					}
					$this -> response["body"][] = $timeDTO;
				}
				
			}
			$this -> response["message"] = "Listado de companias completo";
			$this -> response["status"] = "exito";
    	} catch ( \Exception $e) {
			//error_log(print_r($e,true));
			$this -> response["message"] = $e -> getMessage(); 
    	}
		
		

    }
 
}

?>