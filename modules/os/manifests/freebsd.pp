class os::freebsd {

    cron { updateports:
        command => "/usr/local/bin/svn up /usr/ports",
        user => root,
        hour => 0,
        minute => 0,
        ensure => present
    }

}
