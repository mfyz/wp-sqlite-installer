echo "\033[0;32m #### Downloading wordpress latest \033[0m"
curl https://wordpress.org/latest.zip > wp.zip

echo
echo "\033[0;32m #### Extracting wordpress archive \033[0m"
unzip wp.zip
mv wordpress/* ./
rm -rf wordpress
rm wp.zip

echo
echo "\033[0;32m #### Setting up sqlite as wp database \033[0m"
touch wordpress.db
mv db.php wp-content/
# set up and modify wp-config
echo "<?php\n" >> wp-config.php
echo "define('DB_DIR', __DIR__);" >> wp-config.php
echo "define('DB_FILE', 'wordpress.db');" >> wp-config.php
echo "\n//$(cat wp-config-sample.php)" >> wp-config.php

read -p "Do you want to set up wordpress site as well? " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    sh ./configure-wp.sh
fi

echo "\nAll done! You can use ./run.sh to start your wordpress server\n"
