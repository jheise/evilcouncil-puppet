class puppet::cron {
    if $hostname != "Rei" {
        cron { puppetupdate:
            command => "/usr/local/sbin/puppet-update.sh > /dev/null",
            user => root,
            hour => "0"
        }

        cron { puppetrun:
            command => "/usr/local/sbin/puppet-run.sh > /dev/null",
            user => root,
            hour => "0"
        }
    }
}
