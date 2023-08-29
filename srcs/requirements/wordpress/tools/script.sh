#!/bin/bash

if [ -f /var/www/html/wp-config.php ]; then
    echo "Wordpress already installed"
else
    echo "Wordpress not installed"
    echo "Installing Wordpress..."
    wp core download --path=/var/www/html --allow-root
    wp config create --path=/var/www/html --dbname=$DBNAME --dbuser=$DBUSER --dbpass=$DBPASS --dbhost="mariadb" --allow-root --force
    wp core install --path=/var/www/html --url=https://aheddak.42.fr --title="inception" --admin_user=$WPADMIN --admin_password=$WPADMINPASS --admin_email=$WPADMINEMAIL --allow-root
    wp user create $WPUSER $WPUSEREMAIL --role=author --user_pass=$WPUSERPASS --allow-root
    echo "Wordpress installed"
fi
php-fpm7.4 -F