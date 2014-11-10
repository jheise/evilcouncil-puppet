class misc::standard {
    Package{
        ensure => "latest",
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

    package{ "screen":
    }

}
