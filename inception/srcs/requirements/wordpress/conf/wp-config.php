<?php

define('DB_NAME', 'database');
define('DB_USER', 'user');
define('DB_PASSWORD', 'user_pwd');
define('DB_HOST', 'mariadb');
define('DB_CHARSET', 'utf8');
define('WPMS_ON', false ); # Turn of email feature, otherwise error during build

$table_prefix = 'wp_';

if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

require_once ABSPATH . 'wp-settings.php';
?>