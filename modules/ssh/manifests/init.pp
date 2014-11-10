class ssh {

    include ssh::params
    include ssh::packages
    include ssh::config
    include ssh::service

}
