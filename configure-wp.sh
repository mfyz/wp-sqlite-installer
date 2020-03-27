echo "\033[0;32m #### Installing wp-cli \033[0m"
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

echo "\n\033[0;32m #### Install wordpress site \033[0m"
php wp-cli.phar core install\
		--url=http://localhost:8011\
		--title='Test Site'\
		--admin_user=admin\
		--admin_password=admin\
		--admin_email=test@example.com\
		--skip-email

echo "\n\033[0;32m #### Tweaking wordpress settings \033[0m"
php wp-cli.phar rewrite structure '/%postname%/' --hard
php wp-cli.phar option update page_for_posts 10

# echo "\n\033[0;32m #### Installing and activating plugins \033[0m"
# php wp-cli.phar plugin install kirki --activate

# echo "\n\033[0;32m #### Installing and activating theme \033[0m"
# php wp-cli.phar theme activate mytheme

echo "\n\033[0;32m #### Creating sample content \033[0m"
php wp-cli.phar post create --post_type=post --post_title='A sample post'
