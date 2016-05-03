<?php
/**
 * @author Christian Hernandez <christian.hernandez@masnegocio.com>
 */
class Tags {
	/**
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
	
	public function insert($values = array(0, "test", "1")){
		
		$this -> log -> addDebug("Tags::insert()", array(basename(__FILE__)."::".__LINE__))	 ;
		$this -> log -> addDebug(print_r($values,true), array(basename(__FILE__)."::".__LINE__))  ;
		$insertStatement = $this -> pdo -> insert(array("tagid", "parent_type", "parentid"))
               					   				->into('rel_tags')
               									->values($values);
		#$this -> log -> addDebug("QUERY -> ", array(basename(__FILE__)."::".__LINE__));
		#$this -> log -> addDebug(print_r($insertStatement -> compile()), array(basename(__FILE__)."::".__LINE__));
		$insertId = $insertStatement->execute();
	}
	
}

?>
