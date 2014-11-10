class ssh::config { 

    file{ "/etc/ssh":
        ensure => directory,
        owner => root,
        group => $ssh::params::groupid,
        mode => 755,
        require => $osfamily ? {
            debian => Class["ssh::packages"],
            default => undef
        }

    }

    file{ "/etc/ssh/sshd_config":
        owner => root,
        group => $ssh::params::groupid,
        mode => 644,
        #source => "puppet:///modules/ssh/sshd_config",
        content => template("ssh/sshd_config.erb"),
        require => File["/etc/ssh"],
        notify => Service["ssh::sshd"]
    }

}
