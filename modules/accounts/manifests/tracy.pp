class accounts::tracy {

	file { "/home/tracy":
		owner => "tracy",
		group => "tracy",
		mode => 755,
		ensure => directory,
		path => "/home/tracy",
	}

	file { "/home/tracy/.ssh":

		owner => "tracy",
		group => "tracy",
		mode => 700,
		ensure => directory,
		path => "/home/tracy/.ssh"
	}

	ssh_authorized_key { "tracy-pubkey":
		ensure => present,
		type => "ssh-rsa",
		user => "tracy",
		key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQDLvx8fxzirWZwrwdFeHvV8nQC1iOQYlclcSA8eEUgnITGlMgZRzL9pnbypMbGx1S8E0Yo8aFOfZmYRXX1pEkyAFsVz2UXhiLzkxRghlfED9tbNcLIb2brFgdWF+3ESlC9NkRy4MMc7kLGWAy/r3bwjRHVhXXUP125VyUmHmKw2VHAriQ5/QR70exzUktw9Z5llVNAXk8L9ZNlCrNgGy/1rSwTwB8s9m9tFjYKrfrDOMpDXRhDmo64dN6SdgaouYIcMZxCuTFARX7urM1ISkth7/rocBz0NY9TFQ/JgrkJiIliRNe71U1H6m6b618EW3go5lo8WPK5fe1VnjxbirT0r",
		require => File["/home/tracy/.ssh"]
	}

    ssh_authorized_key { "tracy-pubkey-2":
		ensure => present,
		type => "ssh-rsa",
		user => "tracy",
		key => "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDu2306jjEeWEmBoWB4eRT1bg/ZC+RMUD2RmGrhgDy6gvB0gQ69eZ/dF2gl5x5HEuiIdcPmn65fMeKOYVhmjJvL3M2yaotFndKSdAAkSENQW5Zb/rR2ko3hjG7IU/Xd831Yao6XMk8jsqaFJ2jzpxydmWH0MOkr56LyZQLMFuR2aonTzq9aNyPWh+Br1bAVf7/UvbpUAqHJrrlMCd7OsmM5TSeFmIlNThKEXb0ma8obfeQHQJYAXoCg5+IYE4WF4CTUEpzYHhMvaH8kGa4QEbFdwsArhVVc2l1n2JGbyZOsnVWz6uwHj1vJ27RLuRzwXFFndWQ3Mu+Km7VwGjyFg/ip",
		require => File["/home/tracy/.ssh"]
	}

}
