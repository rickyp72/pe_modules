# Class: mysql
#
#
class mysql {
	include mysql::install, mysql::config, mysql::service
}