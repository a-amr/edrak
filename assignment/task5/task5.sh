#!/usr/bin/env sh

echo "for the student_user account"
mysqldump -u student_user -p student_db > student_db_backup.sql
echo "again"
mysql -u student_user -p student_db < student_db_backup.sql
