<?php namespace Masnegocio\teamwork\Recurso;


class CategoryProject {
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
    		$request = \TeamWorkPm\Factory::build('Category\Project');
			$project = (string) $request -> getAll() ;
			error_log(print_r($project,true));
			if ( count($project) > 0){
				foreach ($project as $key => $objeto) {
					$projectDTO = new ProjectCategorieDTO();
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

/**
 * ProjectCategorieDTO
 */
class ProjectCategorieDTO {
	
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