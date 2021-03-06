#!/bin/bash
target=/tmp/apt-updated
age=30
if [ -e $target ]
then
    echo "$target exists, checking modified time"
    if test `find /tmp -name 'apt-updated' -mmin +$age`
    then
        echo "$target is older than $age minutes, updating"
        /usr/bin/apt-get update
        /bin/rm $target
        /usr/bin/touch $target
    else
        echo "$target is younger than $age minutes, passing"
    fi

else
    /usr/bin/apt-get update
    /usr/bin/touch $target

fi

exit 0
