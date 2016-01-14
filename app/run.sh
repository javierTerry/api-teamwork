#!/bin/bash
# Script que proporciona una manera practica de resolver las rutas del rpoeucto api.teamworki


date1=$(date -u +"%s")
echo "INICIANDO PROCESO DE EXTRACCION TEAMWORK - "$(date)
base=$(pwd)
relative=$(dirname $0)
path=$relative
echo $path
cd $path

echo "Extraccion -> MainCategoryProject.php "
php -r 'require_once "resource/MainCategoryProject.php"; $obj = new MainCategoryProject(); $obj ->obtener();'

echo "Extraccion -> MainCompania.php "
php -r 'require_once "resource/MainCompania.php"; $obj = new MainCompania(); $obj ->obtener();'

echo "Extraccion -> MainExpense.php "
php -r 'require_once "resource/MainExpense.php"; $obj = new MainExpense(); $obj ->obtener();'

echo "Extraccion -> MainMilestone.php "
php -r 'require_once "resource/MainMilestone.php"; $obj = new MainMilestone(); $obj ->obtener();'

echo "Extraccion -> MainPeople.php "
php -r 'require_once "resource/MainPeople.php"; $obj = new MainPeople(); $obj ->obtener();'

echo "Extraccion -> MainProject.php "
php -r 'require_once "resource/MainProject.php"; $obj = new MainProject(); $obj ->obtener();'

echo "Extraccion -> MainTag.php "
php -r 'require_once "resource/MainTag.php"; $obj = new MainTag(); $obj ->obtener();'

echo "Extraccion -> MainTask.php "
php -r 'require_once "resource/MainTask.php"; $obj = new MainTask(); $obj ->obtener();'

echo "Extraccion -> MainTimeEntry.php "
php -r 'require_once "resource/MainTimeEntry.php"; $obj = new MainTimeEntry(); $obj ->obtener();'

date2=$(date -u +"%s")
diff=$(($date2-$date1))
echo "$(($diff / 60)) minutes and $(($diff % 60)) seconds elapsed."

echo "FINALIZANDO PROCESO DE EXTRACCION - "$(date)
