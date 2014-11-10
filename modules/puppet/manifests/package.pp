class puppet::package {

    package{ "puppet":
        ensure => $operatingsystem ?{
            FreeBSD => installed,
            default => latest
        },
        require => Class["os"]
    }
}
