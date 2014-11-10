class os::ubuntu {

    include os::ubuntu-params

    file { "/usr/local/bin/update.sh":
        mode => 755,
        content => template("os/apt-update.sh.erb")
    }

    exec { "/usr/local/bin/update.sh":
        path => ["/bin","/sbin","/usr/bin/","/usr/sbin","/usr/local/bin","/usr/local/sbin"],
    }

    #class { 'ruby':
        #version => latest,
        #gems_version => latest,
        #require => Exec["/usr/local/bin/update.sh"]
    #}

    #package { "ruby1.9.1-dev":
        #ensure => latest,
        #require => Exec["/usr/local/bin/update.sh"]
    #}

    #package { "sqlite3":
        #ensure => installed,
        #require => Exec["/usr/local/bin/update.sh"]
    #}

    #package { "libsqlite3-ruby":
        #ensure => installed,
        #require => [Package["sqlite3"],Class["ruby"]]
    #}

    package { "python-software-properties":
        ensure => installed,
        require => Exec["/usr/local/bin/update.sh"]
    }
}
