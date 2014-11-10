# chestone.pp all of the home directory shenanigans

class accounts::chestone {

	file { "/home/chestone":
		owner => "chestone",
		group => "chestone",
		mode => 755,
		ensure => directory,
		path => "/home/chestone",
	}

	file { "/home/chestone/.ssh":

		owner => "chestone",
		group => "chestone",
		mode => 700,
		ensure => directory,
		path => "/home/chestone/.ssh"
	}

	ssh_authorized_key { "chestone-pubkey":
		ensure => present,
		type => "ssh-rsa",
		user => "chestone",
		key => "AAAAB3NzaC1yc2EAAAABIwAAAQEAzTYoja8Mpp8F9Vzwm+yTAfNK3/fpHR9lbuF0FZRJAyITqVJ4cZc4BObXbXES5XFXyyEt/1Kbt5XmbDlk92GZGr8hGqtd6MSrTdRhd5vuQnXRkNGvAT1r48DCOZ6JRy8u21l5jqxnzQoKxJ5faeVmIpYZ1MtO9yLZkW9iqDx0GCP9u/MeZSdART+/c8X8mucwP8MULfOMqs+HGzA2/c6/lDBTq9n10JCB+w9vFrmKsLFo3TZ1iCk1vPyxKN6/CsdMMElisdUWR1MVOtjyKv5m3mMpI61c8fs158AQhZZRuRwodzRSr6JSFVQXNq/oExvh1pepsKTenzv/dA4j/RK+vw==",
		require => File["/home/chestone/.ssh"]
	}

}
