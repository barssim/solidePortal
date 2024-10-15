##Docker
docker run -p 8080:8080 --network="host" --name solidepotal_container solideportal_image


##MySQL  
###install  
sudo apt update  
sudo apt install mysql-server  
sudo systemctl start mysql.service
 
###change password:  
sudo mysql  
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';  

###Open mysql and configure it:
mysql -u root -p  
ALTER USER 'root'@'localhost' IDENTIFIED WITH auth_socket;  
sudo mysql_secure_installation  

####Export/Import database file in mysql 
mysqldump -u username -p database_name > data-dump.sql  
First copie exported file from host into docker container:    
docker cp data-dump solideportal_container:/tmp

CREATE DATABASE new_database;  
mysql -u username -p   
new_database < /tmp/data-dump.sql

 