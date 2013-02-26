class ssh::config {
#	file { "/etc/ssh/sshd_config": # Before updating ssh::params
	file { $ssh::params::ssh_service_config: # User this with ssh::params
	ensure => present,
	owner => 'root',
	group => 'root',
	mode => 0600,
	source => "puppet:///modules/ssh/sshd_config",
	require => Class["ssh::install"],
	notify => Class["ssh::service"],
	}
}
