# Class: mysql::install
#
#
class mysql::install {
	package {[ "mysql5", "mysql5client", "mysql5rt", "mysql5test", "mysql5devel"]:
		ensure => present,
		require => User["mysql"],
	}
	
	user { "mysql":
		comment => "MySQL user",
		ensure => present,
		shell => "/bin/false",
		require => Group["mysql"],
	}
	
	group { "mysql":
		ensure => present,
	}
}