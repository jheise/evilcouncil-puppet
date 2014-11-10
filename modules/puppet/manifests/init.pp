class puppet {

    include puppet::package
    include puppet::config
    include puppet::files
    include puppet::cron

}
