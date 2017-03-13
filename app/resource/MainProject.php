<?php 

require_once(dirname(dirname(dirname(__FILE__)))."/vendor/autoload.php");
require_once(dirname(dirname(dirname(__FILE__)))."/app/config/config.php");
require_once(dirname(dirname(dirname(__FILE__)))."/app/config/Logger.php");
require_once(dirname(dirname(dirname(__FILE__)))."/DataBase/Conexion.php");
require_once(dirname(dirname(dirname(__FILE__)))."/app/resource/rel/Categories.php");

use Masnegocio\teamwork\Recurso\Project;

class MainProject {	

	/**
	 * Create a new authentication controller instance.
	 *
	 * @param  \Illuminate\Contracts\Auth\Guard  $auth
	 * @param  \Illuminate\Contracts\Auth\registrar  $registrar
	 * @return void
	 */
	private $log = null;

	public function __construct()
	{
		$this -> log = LoggingHelper::getLogger();
	}

	public function obtener(){
		try{

			$compania = new Project();
			$compania -> __set("apiKey", APIKEY_);
			$this -> log -> addInfo("Inicio flujo de Project", array(basename(__FILE__)."::".__LINE__)) ;
			$compania -> obtener();
			$response = $compania -> __get("response");

			if ($response['status'] == "exito" && count($response['body']) > 0 ){
				$this -> log -> addInfo("Respuesta de api exitosa", array(basename(__FILE__)."::".__LINE__)) ;
				
				$values = array();
				$pdo = new \Slim\PDO\Database(BD_DNS_, BD_USER_, BD_PWD_); //Conexion::getInstance();
				foreach ($response['body'] as $key => $value) {
					$keys = array();
					$insertValue= array();
					foreach ($value as $keyB => $valueB) {
						array_push($keys,$keyB);
						array_push($insertValue, ( empty($valueB) || $valueB == '') ? 'null' : $valueB );
					}
					
					$insertValue[8] = $value -> company['id'];
					$keys[8] = 'companyId';

					$insertValue[3] = str_replace("Z", "", $insertValue[3]);
					$insertValue[4] = is_null($insertValue[4]) ?  $insertValue[4] : '2017-01-01 00:00:00';
					$insertValue[4] = str_replace("Z", "", $insertValue[4]);
					$insertValue[5] = str_replace("Z", "", $insertValue[5]);
					$insertValue[7] = is_null($insertValue[7]) ?  $insertValue[7] : '2017-01-01 00:00:00';
					$insertValue[7] = str_replace("Z", "", $insertValue[7]);


					$this -> log -> addInfo(print_r($keys,true), array(basename(__FILE__)."::".__LINE__)) ;
					$this -> log -> addInfo(print_r($insertValue,true), array(basename(__FILE__)."::".__LINE__)) ;
					$insertStatement = $pdo->insert($keys)
                    					   ->into('lkp_projects')
                       						->values($insertValue);

					$insertId = $insertStatement->execute();
					$this -> insertRel($value);
					
				}
			} else {
				$this -> log -> addInfo("Sin recursos encontrados", array(basename(__FILE__)."::".__LINE__)) ;
			}
		} catch (PDOException $e){
                        $this -> log -> addError("PDOException", array(basename(__FILE__)."::".__LINE__)) ;
                        $this -> log -> addError($e -> getMessage(), array(basename(__FILE__)."::".__LINE__)) ;
        } catch (\Exception $e){
                $this -> log -> addError(" ", array(basename(__FILE__)."::".__LINE__)) ;
                $this -> log -> addError($e -> getMessage(), array(basename(__FILE__)."::".__LINE__)) ;
        }
		
	}//fin obtener()
	
	private function insertRel($value){
		try{
			$this -> log -> addInfo("Inicia funcion MainProject::insertRel() ");
			$categories = new Categories();
			$rel = array(0,"lkp_projects", $value -> id);
			$categories -> insert($rel);	
		} catch (\Excetion $e){
			$this -> log -> addError($e -> getMessage(), array(basename(__FILE__)."::".__LINE__)) ;
		}
		
		
	}//fin insertRel()

}

