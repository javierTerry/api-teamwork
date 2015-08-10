<?php
namespace MNTrait\Comun;

trait MagicMethod {
	
	public function __set($key, $value) {
		if ($value === '' || !$value){

		} elseif( !property_exists($this, $key)) {
			throw new \Exception(" The property '".$key."' not exist", 3000);
		}
		$this -> $key = $value;
	}
	
	public function __get($key) {
		if (property_exists($this, $key)) {
			return $this->$key;
		} else {
			$resourceName = get_class($this);
			throw new \Exception(" Undefined property of $resourceName instance: $key"); // TODO error_log?
			return null;
		}
	}
}

?>