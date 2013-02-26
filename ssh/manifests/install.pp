class ssh::install {
	package { $ssh::params::ssh_package_name:
		ensure => installed,
	}
## Package before adding ssh::params file ##
#	package { "ssh":
#		name => $operatingsystem ?
#		/(Red Hat|CentOS|Fedora|Ubuntu|Debian)/ => "openssh-server",
#		Solaris => "openssh",
#		},
#	ensure => installed,

### Simple pachage resource ###
#	package { "openssh":
#	ensure => present,
#	}

}
