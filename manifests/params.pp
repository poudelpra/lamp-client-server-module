class apache::params {
	if $::osfamily  == 'Redhat' {
	$apachename == 'httpd'
} elseif $::osfamily == 'Debian' {
	$apachename == 'apache2'
} else {
	print "This is not supported Distrubution"

	if $::osfamily == 'RedHat' {
		$conffile = '/etc/httpd/conf/httpd.conf'
		$confsource = 'puppet://modules/apache/httpd.conf'
	} elseif $::osfamily =='Debian' {
		$conffile ='/etc/apache2/apache2.conf'
		$confsource = 'puppet://modules/apache/apache2.conf'
	} else {
		print " This is not supported Version"
	}
}