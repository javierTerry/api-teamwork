#Teamwork

Proyecto integracion teamwork 


* Se usa la integracion de un proyecto independiente

Use [packagist](https://github.com/javierTerry/MNTrait.git) - agrega a tu `composer.json`

    {
        "require": {
            "javierTerry/MNTrait": "dev-master",
        }
    }

Trait Response
----------------------------------
## Usage

=======
Version 0.1 (July 30th, 2015)
=======================================

Para uso del proyecto se debe de tener la [api key](http://developer.teamwork.com/enabletheapiandgetyourkey). del administrador de TeamWork.

Así como la URI de nuestro Dashboard, Example (https://personal69.teamwork.com/)

Los recursos disponibles son:

* GET /projectCategories.json
* GET /companies.json
* GET /people.json
* GET /projects.json
* GET /time_entries.json
* GET /projects/{project_id}/tasklists.json
* GET /milestones.json?find=[all|completed|incomplete|late|upcoming]
* GET /expenses.json
Los recursos pendientes son:

* GET /tags.json


----------------------------------
Regresa la lista de las compañias disponibles 

## Usage
```php
    require 'vendor/autoload.php';
	class MyTraitTest {
```	
