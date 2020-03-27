# For development purposes to revert changes
# [CAUTION!] and delete installed wordpress

echo "\033[0;31m #### Move db.php back \033[0m"
mv wp-content/db.php ./

echo "\033[0;31m #### Remove database \033[0m"
rm wordpress.db

echo "\033[0;31m #### Remove wordpress \033[0m"
rm -rf wp-admin wp-content wp-includes
rm wp-*.php
rm index.php
rm license.txt
rm readme.html
rm xmlrpc.php
