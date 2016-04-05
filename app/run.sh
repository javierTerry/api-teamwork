#!/bin/bash
# Script que proporciona una manera practica de resolver las rutas del rpoeucto api.$BD_NAMEi
USER_MYSQL="teamuser"
PSW_MYSQL="t34mus3r"
BD_NAME="teamwork"


date1=$(date -u +"%s")
echo "INICIANDO PROCESO DE EXTRACCION $BD_NAME - "$(date)
base=$(pwd)
relative=$(dirname $0)
path=$relative
cd $path

echo "Truncate -> MainCategoryProject "
mysql -u $USER_MYSQL -p$PSW_MYSQL $BD_NAME -e "truncate lkp_categories;"
echo "Extraccion -> MainCategoryProject.php "
php -r 'require_once "resource/MainCategoryProject.php"; $obj = new MainCategoryProject(); $obj ->obtener();'

echo "Truncate -> MainCompania "
mysql -u $USER_MYSQL -p$PSW_MYSQL $BD_NAME -e "truncate lkp_companies;"
echo "Extraccion -> MainCompania.php "
php -r 'require_once "resource/MainCompania.php"; $obj = new MainCompania(); $obj ->obtener();'


echo "Truncate -> MainExpense "
mysql -u $USER_MYSQL -p$PSW_MYSQL $BD_NAME -e "truncate lkp_expenses;"
echo "Extraccion -> MainExpense.php "
php -r 'require_once "resource/MainExpense.php"; $obj = new MainExpense(); $obj ->obtener();'


echo "Truncate -> MainMilestone "
mysql -u $USER_MYSQL -p$PSW_MYSQL $BD_NAME -e "truncate lkp_milestones;"
echo "Extraccion -> MainMilestone.php "
php -r 'require_once "resource/MainMilestone.php"; $obj = new MainMilestone(); $obj ->obtener();'


echo "Truncate -> MainPeople "
mysql -u $USER_MYSQL -p$PSW_MYSQL $BD_NAME -e "truncate lkp_persons;"
echo "Extraccion -> MainPeople.php "
php -r 'require_once "resource/MainPeople.php"; $obj = new MainPeople(); $obj ->obtener();'


echo "Truncate -> MainProject "
mysql -u $USER_MYSQL -p$PSW_MYSQL $BD_NAME -e "truncate lkp_projects;"
echo "Extraccion -> MainProject.php "
php -r 'require_once "resource/MainProject.php"; $obj = new MainProject(); $obj ->obtener();'


echo "Truncate -> MainTag "
mysql -u $USER_MYSQL -p$PSW_MYSQL $BD_NAME -e "truncate lkp_tags;"
echo "Extraccion -> MainTag.php "
php -r 'require_once "resource/MainTag.php"; $obj = new MainTag(); $obj ->obtener();'


echo "Truncate -> MainTask "
mysql -u $USER_MYSQL -p$PSW_MYSQL $BD_NAME -e "truncate lkp_tasks;"
echo "Extraccion -> MainTask.php "
php -r 'require_once "resource/MainTask.php"; $obj = new MainTask(); $obj ->obtener();'


echo "Truncate -> MainTimeEntry "
mysql -u $USER_MYSQL -p$PSW_MYSQL $BD_NAME -e "truncate lkp_time_entries;"
echo "Extraccion -> MainTimeEntry.php "
php -r 'require_once "resource/MainTimeEntry.php"; $obj = new MainTimeEntry(); $obj ->obtener();'

date2=$(date -u +"%s")
diff=$(($date2-$date1))
echo "$(($diff / 60)) minutes and $(($diff % 60)) seconds elapsed."

echo "FINALIZANDO PROCESO DE EXTRACCION - "$(date)
