# MNTrait

Se usa para tener algunos fragmentos de codigo de uso comun

[![Build Status](https://secure.travis-ci.org/goaop/framework.png?branch=master)](https://github.com/javierTerry/MNTrait)
[![GitHub release](https://img.shields.io/github/release/goaop/framework.svg)](https://github.com/javierTerry/MNTrait/releases)
[![Minimum PHP Version](http://img.shields.io/badge/php-%3E%3D%205.4-8892BF.svg)](https://php.net/)


Version 0.1 (July 30th, 2015)
=======================================

* Trait Response Generico usado en servicios rest
* Trait MagicMethod usado para generar setter y getters en cada clase que se requieran


Use [packagist](https://github.com/javierTerry/MNTrait.git) - put this in your `composer.json`

    {
        "require": {
            "javierTerry/MNTrait": "dev-master",
        }
    }

Trait Response
----------------------------------
## Usage

    require 'vendor/autoload.php';
	class MyTraitTest {
		use MNTrait\Comun\Response;
 	
		public function testResponse(){
			$this -> assertTrue(is_array($this -> __response()));
			
		}
	
	}
 
 
 Trait MagicMethod
----------------------------------
## Usage

    require 'vendor/autoload.php';
	
	class MyTrait{
		use MNTrait\Comun\MagicMethod;
	
		private $isMagic = false;
	
		public function testMagicMethod(){
			
			$this -> __set("isMagic", true);
			$this -> assertTrue($this -> isMagic);
		}
	}
