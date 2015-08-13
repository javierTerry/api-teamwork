<?php namespace Masnegocio\teamwork\Recurso;

require_once(dirname(dirname(dirname(__FILE__)))."/vendor/autoload.php");

use \TeamWorkPm\Company;
use \TeamWorkPm\Response\JSON;
/*
 * 
 */
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
					$companiaDTO = new CompaniaDTO();
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

/**
 * CompaniaDTO
 */
class CompaniaDTO {
	
	public $name 		="";
	public $industry	= "";
	public $website		= "";
	public $country		= "";
	public $countrycode	= "";
	public $cid			= "";
	public $id			= "";

	private $tagid		= "";
 	private $parent_type= "";
 	private $parentid	= "";
	
}

?>