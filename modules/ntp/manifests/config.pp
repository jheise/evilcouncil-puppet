class ntp::config {

    file { "/etc/ntp.conf":
        owner => root,
        group => wheel,
        mode => 644,
        source => "puppet:///modules/ntp/ntp.conf",
        notify => Service["ntp::ntpd"]
    }

}
