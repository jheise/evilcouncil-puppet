class ssh::service {

    service { "ssh::sshd":
        name => $ssh::params::servicename,
        enable => $hostname ? {
            "Rei" => false,
            default => true
        },
        ensure => $hostname ? {
            "Rei" => stopped,
            default => running,
        },
        require => Class["ssh::config"]
    }
}
