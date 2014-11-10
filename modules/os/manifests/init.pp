class os {

    if $operatingsystem == "Ubuntu" {
        include os::ubuntu
    }

    if $operatingsystem == "FreeBSD" {
        include os::freebsd
    }
}
