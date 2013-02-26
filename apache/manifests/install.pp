# Class: apache::install
#
#
class apache::install {
	package { "apache2":
		ensure => present,
	}
}