class ssh::packages {

    if $osfamily == "debian" {
        package { "openssh-server":
            ensure => latest
        }
    }
}
