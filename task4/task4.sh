#!/usr/bin/env sh

echo "for the root account"
mysql -u root -p -e "CREATE DATABASE student_db;"\
"CREATE USER 'student_user'@'localhost' IDENTIFIED BY 'student_pass';"\
"GRANT ALL PRIVILEGES ON student_db.* TO 'student_user'@'localhost';"


#echo "for the student_user account"
#mysqldump -u student_user -p student_db > student_db_backup.sql
#echo "again"
#mysql -u student_user -p student_db < student_db_backup.sql
