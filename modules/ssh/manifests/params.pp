class ssh::params {

    $passwordauthentication = "no"

    $servicename = $operatingsystem ? {
        FreeBSD => "sshd",
        default => "ssh"
    }

    $groupid = $operatingsystem ? {
        FreeBSD => "wheel",
        default => "root"
    }

}
