class misc {

    if $hostname == "Rei" {
        include misc::packages
    }

    include misc::standard
}
