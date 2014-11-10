class ntp::service {

    service{ "ntp::ntpd":     
        name => "ntpd",
        ensure => running,
        enable => true,
    }

}
