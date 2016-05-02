<?php
/**
 * @author Christian Hernandez <christian.hernandez@masnegocio.com>
 */
class RelTaks {
	/*
	 * Inserta en la tabla rel_tags.
	 *
	 * @param  log
	 * @param  pdo
	 * @return void
	 */
	
	private $pdo = null;
	private $log = null;
	  
	function __construct() {
		$this -> pdo = Conexion::getInstance();	
		$this -> log = LoggingHelper::getLogger();
	}
	
	public function insert($values = array(null, "test", "1")){
		
		$this -> log -> addDebug("insert rel", array(basename(__FILE__)."::".__LINE__))	 ;
		$insertStatement = $this -> pdo -> insert(array("taskid", "parent_type", "parentid"))
               					   				->into('rel_tasks')
               									->values($values);
		$insertId = $insertStatement->execute();
	}
	
}

?>