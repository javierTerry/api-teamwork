<?php
/**
 * @author Christian Hernandez <christian.hernandez@masnegocio.com>
 */
class Categories {
	/**
	 * Inserta en la tabla rel_categories.
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
		$insertStatement = $this -> pdo -> insert(array("id", "parent_type", "parentid"))
               					   				->into('rel_categories')
               									->values($values);
		$insertId = $insertStatement->execute();
	}
	
}

?>