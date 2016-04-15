#!/bin/bash
# Script que proporciona una manera practica de resolver las rutas del rpoeucto api.$BD_NAMEi
USER_MYSQL="teamuser"
PSW_MYSQL="t34mus3r"
BD_NAME="teamwork"

echo "INICIANDO PROCESO DE EXTRACCION $BD_NAME - "$(date)
base=$(pwd)
relative=$(dirname $0)
path=$relative
cd $path

## declare an array variable

declare -a array=(
				"MainCategoryProject" "lkp_categories"
				"MainCompania" "lkp_companies"
				"MainExpense" "lkp_expenses"
				"MainMilestone" "lkp_milestones"
				"MainPeople" "lkp_persons"
				"MainProject" "lkp_projects"
				"MainTag" "lkp_tags"
				"MainTask" "lkp_tasks"
				"MainTimeEntry" "lkp_time_entries"
								
				)


echo "Truncate -> lkp_task_lists "
mysql -u $USER_MYSQL -p$PSW_MYSQL $BD_NAME -e "truncate lkp_task_lists;"


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

date2=$(date -u +"%s")
diff=$(($date2-$date1))
echo "$(($diff / 60)) minutes and $(($diff % 60)) seconds elapsed."

echo "FINALIZANDO PROCESO DE EXTRACCION - "$(date)
