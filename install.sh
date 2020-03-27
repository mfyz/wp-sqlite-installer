echo '#### Downloading wordpress latest'
curl https://wordpress.org/latest.zip > wp.zip

echo '#### Extracting wordpress archive'
unzip wp.zip ./
rm wp.zip

echo '#### Setting up sqlite as wp database'
touch wordpress.db
mv db.php wp-content/

# echo "define('DB_DIR', __DIR__);" >> wp-config.php
# define('DB_FILE', 'wordpress.db');