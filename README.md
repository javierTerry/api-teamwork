#Teamwork

Proyecto integracion teamwork 

## Requerimientos

* Agrega a tu composer [packagist](https://github.com/javierTerry/MNTrait.git)

```
{"require": {
        "javierTerry/MNTrait": "dev-master",
    }
}
```

* Copiar de la carpeta extras, las clases Expenses.php y Tag.php, en la ubicacion vendor/myabakus/teamworkpm/src/Project


Trait Response
----------------------------------
## Como ejecutar desde un script

Desde la ubicacion proyecto/app, ejecutar en terminal

```
php -r 'require_once "resource/'${nameFile}'.php"; $obj = new '${nameFile}'(); $obj ->obtener();'
```

----------------------------------

Regresa la lista de las compañias disponibles 

## Usage Tatit Response
```php
    require 'vendor/autoload.php';
	class MyTraitTest {
```

----------------------------------


Version 0.1 (Julio 30, 2015)
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



Version 0.0.2 (Marzo 02, 2017)
=======================================

## Corrección Recuros Mailestone
* GET /milestones.json?find=[all|completed|incomplete|late|upcoming]

No e obtiene informacion ya que el recurso no existia, para lo cual se agrego las clases petinentes

### TestUnit Mailestone



