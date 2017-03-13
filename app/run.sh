#!/bin/bash
# Script que proporciona una manera practica de resolver las rutas del proyecto api.teamwork
#Ejemplo de ejecucion manual
#php -r 'require_once "resource/'${nameFile}'.php"; $obj = new '${nameFile}'(); $obj ->obtener();' 



USER_MYSQL="root"
PSW_MYSQL="pass"
BD_NAME="teamwork"


echo "INICIANDO PROCESO DE EXTRACCION $BD_NAME - "$(date)
base=$(pwd)
relative=$(dirname $0)
path=$relative
cd $path
date1=$(date -u +"%s")
## declare an array variable

declare -a array=(
				"MainCategoryProject" "lkp_categories"
				"MainCompania" "lkp_companies"
				"MainExpense" "lkp_expenses"
				"MainMilestone" "lkp_milestones"
				"MainPeople" "lkp_persons"
				"MainProject" "lkp_projects"
				"MainTag" "lkp_tags"
				"MainTaskList" "lkp_task_lists"
				"MainTask" "lkp_tasks"
				"MainTimeEntry" "lkp_time_entries"
				
								
				)


echo "Truncate -> rel_tasks "
mysql -u $USER_MYSQL -p$PSW_MYSQL $BD_NAME -e "truncate rel_tasks;"


echo "Truncate -> rel_tags "
mysql -u $USER_MYSQL -p$PSW_MYSQL $BD_NAME -e "truncate rel_tags;"

echo "Truncate -> rel_tags "
mysql -u $USER_MYSQL -p$PSW_MYSQL $BD_NAME -e "truncate rel_categories;"



# get length of an array
arraylength=${#array[@]}

# use for loop to read all values and indexes
for (( i=0; i<${arraylength}; i = i+2 ));
do
    nameTable=${array[$i+1]}
    nameFile=${array[$i]} 
    echo "Truncate -> $nameTable "
    mysql -u $USER_MYSQL -p$PSW_MYSQL $BD_NAME -e "truncate "${nameTable}";"
    echo "Extraccion -> $nameFile.php "
    php -r 'require_once "resource/'${nameFile}'.php"; $obj = new '${nameFile}'(); $obj ->obtener();'
    dateTmp=$(date -u +"%s")
    diffTask=$(($dateTmp-$date1))
    echo "$nameFile  $(($diffTask / 60)) minutes and $(($diffTask % 60)) seconds elapsed."
done


echo "FINALIZANDO PROCESO DE EXTRACCION - "$(date)
date2=$(date -u +"%s")
diff=$(($date2-$date1))
echo "$(($diff / 60)) minutes and $(($diff % 60)) seconds elapsed."
