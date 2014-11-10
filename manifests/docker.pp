include docker

docker::image{ "ubuntu":

}

docker::run{ "xss":
    image => "nginx",
    #command => '/bin/sh -c "while true; do echo hello world; sleep 1; done"',
    command => '/sbin/my_init',
    ports => ['80:80'],
    running => true,

}
