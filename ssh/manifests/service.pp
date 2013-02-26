class ssh::service {
#	service { "sshd": # Before adding ssh_service_name to ssh::params
	service { $ssh::params::ssh_service_name: # After updating ssh::params
	ensure => running,
	hasstatus => true,
	hasrestart => true,
	enable => true,
	require => Class["ssh::config"],
	}
}
