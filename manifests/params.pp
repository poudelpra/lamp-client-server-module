class apache::params {
	if $::osfamily  == 'Redhat' {
	$apachename == 'httpd'
} elseif $::osfamily == 'Debian' {
	$apachename == 'apache2'
} else {
	print "This is not supported Distrubution"
}