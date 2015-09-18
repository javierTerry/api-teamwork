<?php 

require_once(dirname(dirname(dirname(__FILE__)))."/vendor/autoload.php");
require_once(dirname(dirname(dirname(__FILE__)))."/app/config/config.php");
require_once(dirname(dirname(dirname(__FILE__)))."/app/config/Logger.php");
require_once(dirname(dirname(dirname(__FILE__)))."/DataBase/Conexion.php");

use Masnegocio\teamwork\Recurso\Expenses;

class MainExpense {	

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

			$compania = new Expenses();
			$compania -> __set("apiKey", APIKEY_);
			$this -> log -> addInfo("Inicio flujo de Expenses", array(basename(__FILE__)."::".__LINE__)) ;
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
					$this -> log -> addInfo(print_r($insertValue,true), array(basename(__FILE__)."::".__LINE__)) ;
					$insertStatement = $pdo->insert($keys)
                    					   ->into('category_project')
                       						->values($insertValue);

					$insertId = $insertStatement->execute();
				}
			} else {
				$this -> log -> addInfo("Sin recursos encontrados", array(basename(__FILE__)."::".__LINE__)) ;
			}
		} catch (PDOException $e){
			$this -> log -> addInfo("Error de BD", array(basename(__FILE__)."::".__LINE__)) ;
			$this -> log -> addInfo($e -> getMessage(), array(basename(__FILE__)."::".__LINE__)) ;
		} catch (\Exception $e){
			$this -> log -> addInfo("Error de BD", array(basename(__FILE__)."::".__LINE__)) ;
			$this -> log -> addInfo($e -> getMessage(), array(basename(__FILE__)."::".__LINE__)) ;
		}
	}
}