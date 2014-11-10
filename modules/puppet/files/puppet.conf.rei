[main]
logdir=/var/log/puppet
vardir=/var/lib/puppet
ssldir=/var/lib/puppet/ssl
rundir=/var/run/puppet
factpath=$vardir/lib/facter
pluginsync=true
templatedir=$confdir/templates
#modulepath = /etc/puppet/modules
modulepath = /home/jubei/code/ec/puppet/modules
