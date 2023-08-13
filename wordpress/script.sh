#!/bin/bash

# create directory to use in nginx container later and also to setup the wordpress conf
DIR="/var/www/html/";

# remove all the wordpress files if there is something from the volumes to install it again

# The commands are for installing and using the WP-CLI tool.

# downloads the WP-CLI PHAR (PHP Archive) file from the GitHub repository. The -O flag tells curl to save the file with the same name as it has on the server.
cp -r ./wordpress/* $DIR
chmod -R 777 /var/www/html
chown -R www-data:www-data /var/www/html

sed -i 's/database_name_here/'$DBNAME'/g' /var/www/html/wp-config.php
sed -i 's/username_here/'$DBUSER'/g'    /var/www/html/wp-config.php
sed -i 's/password_here/'$DBPASS'/g'  /var/www/html/wp-config.php
mv www.conf /etc/php/7.3/fpm/pool.d/www.conf
service php7.3-fpm start
service php7.3-fpm stop

php-fpm7.3 -F -R





# starts the PHP-FPM service in the foreground. The -F flag tells PHP-FPM to run in the foreground, rather than as a daemon in the background.
