class puppet::files {

    file { "/usr/local/sbin/puppet-update.sh":
        mode => 755,
        source => $operatingsystem ? {
            FreeBSD => "puppet:///modules/puppet/puppet-update-freebsd.sh",
            default => "puppet:///modules/puppet/puppet-update-linux.sh",
        },
    }

    file { "/usr/local/sbin/puppet-run.sh":
        mode => 755,
        source => $operatingsystem ? {
            FreeBSD => "puppet:///modules/puppet/puppet-run-freebsd.sh",
            default => "puppet:///modules/puppet/puppet-run-linux.sh",
        }
    }

    file { "/etc/tags":
        ensure => directory,
    }
}
