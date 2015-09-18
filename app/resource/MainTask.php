<?php 

require_once(dirname(dirname(dirname(__FILE__)))."/vendor/autoload.php");
require_once(dirname(dirname(dirname(__FILE__)))."/app/config/config.php");
require_once(dirname(dirname(dirname(__FILE__)))."/app/config/Logger.php");
require_once(dirname(dirname(dirname(__FILE__)))."/DataBase/Conexion.php");

use Masnegocio\teamwork\Recurso\Task;

class MainTask {	

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

			$taskApi = new Task();
			$taskApi -> __set("apiKey", APIKEY_);
			$this -> log -> addInfo("Inicio flujo de Task", array(basename(__FILE__)."::".__LINE__)) ;
			$pdo = new \Slim\PDO\Database(BD_DNS_, BD_USER_, BD_PWD_); //Conexion::getInstance();
			$qry = $pdo -> select(array('id'))
					-> from('lkp_projects');
					#prepare("SELECT id FROM lkp_projects");
			
			$result = $qry->execute();
			//print_r($result -> fetchAll());

			foreach( $result as $key => $value){
				$idProject = $value['id'];
				$this -> log -> addInfo("id del proyecto " .$idProject, array(basename(__FILE__)."::".__LINE__)) ;
			#print_r($result->fetch());
			$taskApi -> obtener($idProject);
			$response = $taskApi -> __get("response");

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

					$this -> log -> addInfo(print_r($insertValue,true), array(basename(__FILE__)."::".__LINE__)) ;
					$insertStatement = $pdo->insert($keys)
                    					   ->into('lkp_tasks');

					foreach ($insertValue[9] as $keyC => $valueC) {
						$keysB 			= array();
						$insertValueB	= array();
						foreach ($valueC as $keyD => $valueD) {
							array_push($keysB,$keyD);
							array_push($insertValueB, ( empty($valueD) || $valueD == '') ? 'null' : $valueD );
						}
						$this -> log -> addInfo("Insert lkp_tasks", array(basename(__FILE__)."::".__LINE__)) ;
						print_r($keysB);
						print_r($insertValueB);
						$insertStatement = $pdo->insert($keysB)
                    					   ->into('lkp_tasks')
                       						->values($insertValueB);
                       	print_r($insertStatement);			
						$insertId = $insertStatement->execute();
						
						die();
					}
					unset($keys[9]);
					unset($insertValue[9]);
					die();
					//print_r($keys);
					print_r($insertValue);	
					//die();
					$this -> log -> addInfo(print_r($insertValue,true), array(basename(__FILE__)."::".__LINE__)) ;
					$insertStatement = $pdo->insert($keys)
                    					   ->into('lkp_task_lists')
                       						->values($insertValue);

					$insertId = $insertStatement->execute();
					
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
		
	}

}

