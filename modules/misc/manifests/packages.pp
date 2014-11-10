class misc::packages {

    package { "terminator":
        ensure => latest
    }

    package { "vim":
        ensure => latest
    }
}
