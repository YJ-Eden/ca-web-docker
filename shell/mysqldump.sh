#! /bin/bash
echo "mysqldump start ..."

docker exec -it mysql /bin/bash -c 'mysqldump -uroot -proot123 --default-character-set=latin1 --set-charset=false --all-databases> /var/lib/mysql/hello_`date +%Y-%m-%d_%H-%M`.sql'

echo "mysqldump success ok !"