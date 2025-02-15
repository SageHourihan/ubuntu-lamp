# MYSQL Create User
1) log in as root ```sudo mysql -u root -p```
2) create new user ```CREATE USER 'new_user'@'localhost' IDENTIFIED BY 'new_password';```
3) grant root privileges to new user ```GRANT ALL PRIVILEGES ON *.* TO 'new_user'@'localhost' WITH GRANT OPTION;```
4) flush privileges ```FLUSH PRIVILEGES;```
5) exit ```EXIT;```
6) log in and change root password

