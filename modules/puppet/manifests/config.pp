class puppet::config { 
    
    if $hostname == "Rei" {
        file { "/etc/puppet/puppet.conf":
            mode => 644,
            owner => root,
            group => root,
            source => "puppet:///modules/puppet/puppet.conf.rei",
            require => Class["puppet::package"]
        }
    } else {
        file{ "puppet.conf":
            source => $operatingsystem ? {
                /(Ubuntu|Debian)/ => "puppet:///modules/puppet/puppet.conf.linux",
                FreeBSD => "puppet:///modules/puppet/puppet.conf.freebsd"
            },
            path => $operatingsystem ? {
                FreeBSD => "/usr/local/etc/puppet/puppet.conf",
                default => "/etc/puppet/puppet.conf"
            },
            mode => 644,
            owner => root,
            group => root,
            require => Class["puppet::package"]
        }
    }

}
