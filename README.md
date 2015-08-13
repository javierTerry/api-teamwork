#Teamwork

Proyecto integracion teamwork 


* Se usa la integracion de un proyecto independiente

Use [packagist](https://github.com/javierTerry/MNTrait.git) - put this in your `composer.json`

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

* GET /companies.json
* GET /people.json
* GET /projectCategories.json
* GET /projects.json
* GET /time_entries.json


Los recursos pendientes son:
* GET /milestones.json?find=[all|completed|incomplete|late|upcoming]
* GET /projects/{project_id}/tasklists.json
* GET /tags.json
* GET /expenses.json
* GET /tasks.json


----------------------------------
Regresa la lista de las compañias disponibles 

## Usage
```php
    require 'vendor/autoload.php';
	class MyTraitTest {
