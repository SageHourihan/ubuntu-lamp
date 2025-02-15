#!/bin/bash

# Update package lists
sudo apt update -y

# Install Apache
sudo apt install apache2 -y
sudo systemctl enable apache2
sudo systemctl start apache2

# Install MySQL
sudo apt install mysql-server -y
sudo systemctl enable mysql
sudo systemctl start mysql

# Install PHP and required extensions
sudo apt install php libapache2-mod-php php-mysql php-cli php-curl php-json php-mbstring php-xml php-zip -y

# Install phpMyAdmin
sudo apt install phpmyadmin -y

# Link phpMyAdmin to Apache
sudo ln -s /usr/share/phpmyadmin /var/www/html/phpmyadmin

# Enable Apache mod_rewrite
sudo a2enmod rewrite
sudo systemctl restart apache2

# Set up a basic test PHP file
echo "<?php phpinfo(); ?>" | sudo tee /var/www/html/info.php

# Restart Apache to make sure everything is set
sudo systemctl restart apache2

# Optional: Create a MySQL database for testing
mysql -e "CREATE DATABASE testdb;"

# Finish setup message
echo "LAMP stack and phpMyAdmin installed successfully!"

