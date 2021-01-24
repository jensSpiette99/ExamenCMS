<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '+CEjR3AlV5VMPBLJLtT9ydc4fHxVgyesLPnhHU3HPAlqHek66dayJxKXGUbcZPf0ejATjNSpLYK9Qyw7/lR9hQ==');
define('SECURE_AUTH_KEY',  'WyvN5hJ3YJ4ekSEZi4LnfcVXNgPLerTyczdsn6ljHPaKxP4jo1w8EiXG0zDBkmMoVQNWUIPAsnAlvJweKapCXQ==');
define('LOGGED_IN_KEY',    'hxhRysttoMjWzugfQh5if9ugda4fiE51LoueRVhL/5PTb4eWiItb4cSr4X+M3z2ZUrG7J5v2Ho6kxvhEkN95Pg==');
define('NONCE_KEY',        'v3UWZCW5xD9t9QpBm/vXkS6ZkiVzFbC59bBeWQpCdrxVk288aOITldAPsNpgBy4dVe+fsMKos6/ZHSfJP/3lPw==');
define('AUTH_SALT',        'Dw8Jp2DsixZ8IU0VWKUl+FAXVZ7aJDWDBXR5pU5kWEifFTQcqI16uzh3ueXqWV3K0lArtXe2ofxM5XTz8epnBw==');
define('SECURE_AUTH_SALT', '7qL3Ji6338qZV8LB37fRG5PmQUvWfLz1zsHKWoTUkit07cKgYDtA5auj4P8Vb4OKnpmNSDIo1+n6ELfu8Xee2w==');
define('LOGGED_IN_SALT',   'ems6wRrD+lqyIpnQaY6WCgtNpbRR9QpGgyH92A6y7rKK+gJM7GBoMhLibtMvSp6JS3EKiuI7LFUTHXJvrgT+zg==');
define('NONCE_SALT',       'm98nGgiBlrCu+EUJC/uI0/j31MlFnTKybuo2CXXHNzTyKlm25T4+aoO7PZWhhtkohGxtU2YIoHxYbNL8XYLv4w==');

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';




/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
