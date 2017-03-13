<?php 

require_once(dirname(dirname(dirname(__FILE__)))."/vendor/autoload.php");
require_once(dirname(dirname(dirname(__FILE__)))."/app/config/config.php");
require_once(dirname(dirname(dirname(__FILE__)))."/app/config/Logger.php");
require_once(dirname(dirname(dirname(__FILE__)))."/DataBase/Conexion.php");
require_once(dirname(dirname(dirname(__FILE__)))."/app/resource/rel/Tags.php");
require_once(dirname(dirname(dirname(__FILE__)))."/app/resource/rel/Taks.php");

use Masnegocio\teamwork\Recurso\Task;

class MainTask {	

	/**
	 * Create a new authentication controller instance.
	 *
	 * @param  Masnegocio\teamwork\Recurso\Task  Task()
	 * @param  $idProject Seobtiene de la tabla lkp_projects
	 * @return void
	 */
	private $log = null;

	public function __construct()
	{
		$this -> log = LoggingHelper::getLogger();
	}

	public function obtener(){
		try{

			$pdo = new \Slim\PDO\Database(BD_DNS_, BD_USER_, BD_PWD_); //Conexion::getInstance();
			$qry = $pdo -> select(array('id'))
					-> from('lkp_task_lists');
					
			
			$result = $qry->execute();
			
			foreach( $result as $key => $value){	
				$id = $value['id'];
				$this -> log -> addInfo("id del lista de tareas " .$id, array(basename(__FILE__)."::".__LINE__)) ;
				
				$taskApi = new Task();
				$taskApi -> __set("apiKey", APIKEY_);
				$this -> log -> addInfo("Inicio flujo de Task", array(basename(__FILE__)."::".__LINE__)) ;
				$taskApi -> obtener($id);
				$response = "";
				$response = $taskApi -> __get("response");
				
				if ($response['status'] == "exito" && count($response['body']) > 0 ){
					$this -> log -> addInfo("Respuesta de api exitosa", array(basename(__FILE__)."::".__LINE__)) ;
					
					$values = array();
					$pdo = new \Slim\PDO\Database(BD_DNS_, BD_USER_, BD_PWD_); //Conexion::getInstance();

					$this -> log -> addInfo(print_r(count($response['body']),true), array(basename(__FILE__)."::".__LINE__)) ;
			
					foreach ($response['body'] as $keyB => $valueB) {
						$keys = array();
						$insertValue= array();
						
						foreach ($valueB as $keyC => $valueC) {
							array_push($keys,$keyC);
							array_push($insertValue, ( empty($valueC) || $valueC == '') ? 0 : $valueC );
						}
						$insertValue[1] = str_replace("Z", "", $insertValue[1]);
						$insertValue[14] = str_replace("Z", "", $insertValue[14]);
						$insertValue[15] = ( strtotime($insertValue[15]) ) ?  $insertValue[15] : '20150101' ;
						$insertValue[10] = ( strtotime($insertValue[10]) ) ?  $insertValue[10] : '20150101' ;
						$insertValue[8] = ( strtotime($insertValue[8]) ) ?  $insertValue[8] : '20150101' ;
						$this -> log -> addDebug(print_r($insertValue[15],true), array(basename(__FILE__)."::".__LINE__)) ;
						$this -> log -> addDebug(print_r($keys,true), array(basename(__FILE__)."::".__LINE__)) ;
						$this -> log -> addDebug(print_r($insertValue,true), array(basename(__FILE__)."::".__LINE__)) ;
						
						$insertStatement = $pdo->insert($keys)
	                    					   ->into('lkp_tasks')
	                       						->values($insertValue);
						
						$this -> log -> addInfo(print_r($insertStatement,true));
						$insertId = $insertStatement->execute();
						//$this -> insertRelTask($value);
						
					}
					
				} else {
					$this -> log -> addInfo("Sin recursos encontrados", array(basename(__FILE__)."::".__LINE__)) ;
				}
			}//foreach resulset
		} catch (PDOException $e){
                        $this -> log -> addError("PDOException", array(basename(__FILE__)."::".__LINE__)) ;
                        $this -> log -> addError($e -> getMessage(), array(basename(__FILE__)."::".__LINE__)) ;
        } catch (\Exception $e){
                $this -> log -> addError(" ", array(basename(__FILE__)."::".__LINE__)) ;
                $this -> log -> addError($e -> getMessage(), array(basename(__FILE__)."::".__LINE__)) ;
        }
        $insertStatement = null;
        $pdo = null;
		$result = null;

	}//fin obtener()
	
	private function insertRel($value){
		try{
			$this -> log -> addInfo("Inicia funcion MainTask:insertRel() ");
			$tags = new Tags();
			$rel = array(0,"lkp_tasks", $value -> id);
			$tags -> insert($rel);	
		} catch (\Excetion $e){
			$this -> log -> addError($e -> getMessage(), array(basename(__FILE__)."::".__LINE__)) ;
		}
		
		
	}//fin insertRel()
	
	private function insertRelTask($value){
		try{
			$this -> log -> addInfo("Inicia funcion MainTask:insertRelTask() ");
			$taks = new RelTaks();
			$rel = array(0,"lkp_tasks", $value -> id);
			$taks -> insert($rel);	
		} catch (\Excetion $e){
			$this -> log -> addError($e -> getMessage(), array(basename(__FILE__)."::".__LINE__)) ;
		}
		
		
	}//fin insertRel()

}

