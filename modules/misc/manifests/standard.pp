class misc::standard {
    Package{
        ensure => "Latest",
        require => Class["os"]
    }

    package{ "mosh":
    }

    package{ "vim":
    }

    package{ "irssi":
    }

    package{ "tmux":
    }

}
