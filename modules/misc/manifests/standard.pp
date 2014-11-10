class misc::standard {

    package{ "mosh":
        ensure => "latest",
        require => Class["os"]
    }

    package{ "vim":
        ensure => "latest",
        require => Class["os"]
    }

    package{ "irssi":
        ensure => "latest",
        require => Class["os"]
    }

}
