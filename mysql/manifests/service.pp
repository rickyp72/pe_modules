# Class: mysql::service
#
#
class mysql::service {
	service { "cswmysql5":
		ensure => running,
		hasstatus => true,
		hasrestart => true,
		enable => true,
		require => Class["mysql::config"],
	}
}
