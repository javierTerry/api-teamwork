<?php
namespace MNTrait\Comun;

trait Response {
	
	public function __response() {
		
		return array('message' => "Error inesperado intente mas tarde"
						,'codigo'	=> 0
						,'status'	=> "fallo"
						,'body'		=> false
						);
	}
	
}

?>
