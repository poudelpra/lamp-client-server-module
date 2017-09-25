class apche::vhosts {
if $::osfamily == 'RedHat' { 
	file { 'etc/httpd/conf.d/vhost.conf':
	ensure =>file,
	content =>template('apache/vhosts-rh.conf.erb')
	}
	} elseif $::osfamily == 'Debian' {
		file { 'etc/apache2/sites-available/$servicename.conf':
		ensure => file,
		content => template('/apache2/vhosts-deb.conf.erb'),
	}
	} else { 
		print 'This is not suported Distribution'
	}
}