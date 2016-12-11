class accounts::jubei {

	file { "/home/jubei":
		owner => "jubei",
		group => "jubei",
		mode => 755,
		ensure => directory,
		path => "/home/jubei",
	}

	file { "/home/jubei/.ssh":

		owner => "jubei",
		group => "jubei",
		mode => 700,
		ensure => directory,
		path => "/home/jubei/.ssh"
	}

	ssh_authorized_key { "jubei-pubkey":
		ensure => present,
		type => "ssh-dss",
		user => "jubei",
		key => "AAAAB3NzaC1kc3MAAACBAJzoaVJd21nbsNvJXZ7VV0Tnf2M7Lz/P0Nm/TkUhooO+hwxfmfqsL+DxdjqTe424kFJtsze3T1RZpa05HSSNb0C15JWVFgOVjqWYOCJdB4clxUZxWKvZQfXC7dy7olO/pWe7Bk1NLGQFUMXvlaplAXZ9im77TM6+AYSbH+0+1zVPAAAAFQCopqTQ/SdI9zBRwex8QPG56/s0GQAAAIBvmhLmfclsHWkWi8d1wiZQNQ6DTof+GRWEUJQMbdIJMme4V5aIZxcQPay0A1Ax+IB7cv/Dk5BaqXFDm9DV+zJUA2CBdSIIVx+xKwXHBjMnmvZhCIdr8vK59leunlMJnmDwHnTvQigZLO4EVcU3WzVb+0iv5TE0D86ZICzgXz+7EwAAAIB2D3CCa7pKjRx8YO3nZuAETPjN6qgDfxqvRccbHy/qONCWxmFoB6aob1Ch166MPf0uLM1ysvel3n6AzhvPUANMUktCQccIQxU5GUi6zpimQGLtxRw5OivUP/nQH6Dm+FmzSiD0ERHh6pZwtaPYki2LOsDSEyKK3Z/Irx6E/+jYRA==",
		require => File["/home/jubei/.ssh"]
	}

    ssh_authorized_key { "jubei-rsa":
        ensure => present,
        type => "ssh-rsa",
        user => "jubei",
        key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCSkgAXyXvxAZyHe7FfyACxnvoXDY2zFSSor8d2edGuSq+tYzjqv8wjZBZf71H6t8wipIObcV5j63P0b22HVKSKvhyGa20ua9PGDWoeH97TXJWRXkgo1xaCybbVGUoeUFtneusZaMk4c6vFmgRxe0BWhbzI0HMzgzX65lI4SG/Opas6TfkPb7MW5KOXb6k1x8kMEFw4ZNPZ/j0858my6ch1SIN+vMmLCKt82f1jDVVYrNtvyzvFnbcUmVOM3abatQWTqYGvXwidhuwUZb/6TFxq4rl9AbAfmnMPotbok8dR7gt5/aoyqeNZ8FWFW84YjR4Bp2fIBPy/hfG2QbVi6BkB",
        require => File["/home/jubei/.ssh"]
    }

	ssh_authorized_key { "jubei-pubkey-ipad":
		ensure => present,
		type => "ssh-dss",
		user => "jubei",
		key => "AAAAB3NzaC1kc3MAAACBAJX3jtzrJbNu6LcnWO6ZZSr+WF67zFukmZud6YNGJ3lngsBlEgVODwmQoBFnXam98yjFEhdKcbGFdKMmmpCzUK/l/SCmhl7A7+6QEOMdxOSZPj6JRe4sE3MD3wI2u2l70jlxKs1aWAezZdqNV2bwKYnKXMyxrnXwrjE+Rg2ko6nVAAAAFQC0xSsuprO94RtuQAFtIcaHdWmhUQAAAIBQ99+VpjI35DdumKBEaqp3ObB0xfxeaR8yKS9cVwr1xEnbZBeE6L81VgFsjG/+ycN1L4Q3tT2dyIuvBMOlSN2tHOdIqGyLz9TLVjT2gPniCYWu9ylSdqYTqYFea4UaZyQbmczy5s1E+rFu2kRBEURrwaNIAg6pihxj4BMTF3iFpgAAAIAdoTWlMxhk99fKLfFxZ3PZ9vktSSzIrP5f4yHw6PHrfnkkRKZ8O2rUaHhJedzIz3dRc2BDB+MwfLbFultpTv3vPlrFdKbiH8lCc0AFTqYmzbSilfNR2Cny0ekiggkporW7qzQ/Wa499I1VhcPe7xYX/smQWwsHqmi2kKoh0QYloA==",
		require => File["/home/jubei/.ssh"]
	}

    ssh_authorized_key { "root@wintermute":
        ensure => present,
        type => "ssh-dss",
        user => "jubei",
        key => "AAAAB3NzaC1kc3MAAACBAMj9QxV69s75wp/gQzraB3hkltKTPGvnXVIXmv4k0kHqzCiQx/tUNjZTxCSJOVB/uTs0XY2MbhRjUppgRjcrqa3kR2z4miKXfXyk9ZV+Zrq71FAi3Tdzcg0RRyEJrIP+XtqMwEMGAhHbBxbPyM/PZSzsUY4c16kO5prfkFM8vTkpAAAAFQCzy7s5vs6RCY1jxJKrLnlvSL9TVQAAAIEAq/h0IM1ZQ4tz5lSe1YOw/gmj42G4Wc6DU5hhQTqo2PolccnYUeHygAcs3jRYlw/MsDYaeNV5EMaHTobCRFpCz6/h7XLdlzbZT6TJBKw87GnuCMIQALQKUkGNWKMISVVzOMWc8+BqbMghJhdsAqzRqR9Me2A6ixcPO1o0X6yZth0AAACAB2XNCpLIqGaTmlaRrxklqZr2XGM0GxeCd/tT7XikMl9ziqpwd05ed6Y1djEJahr3kJ6IustUGBCKW4/2qxzKkALhfYG/PcuwLg/39esvMZo0A/Ctppi6FIw+napXUstYSefHszJeTKritF6zWambWz5XmaiQKVuKJl8ojKY+P8w=",
        require => File["/home/jubei/.ssh"]
    }

    ssh_authorized_key { "root@neuromancer":
        ensure => present,
        type => "ssh-dss",
        user => "jubei",
        key => "AAAAB3NzaC1kc3MAAACBAJ3piJe7Np7/tw4rWfy+kbrVDXAbbxGPN8rFxNLO9jNURN5HqvzymAl8Iv60q4XShEQY7ggw4/YIXGGRndSXOKrheJcMkTZBRu8SkcGNIjFJwXExRxfy5/VlzbtgQHG/7c6gzbKJv+xJmE8xqCxJGdM0/xM8OFaBBuzMG7GBNW/RAAAAFQC/as6Qy3OIlZGun8D715W2+vynMwAAAIEAjaP7AJ6EzzI07ThOrSFNR7dLf602pC9LBnC2qRK25EljgxT8ntSIJuaeF+VoOMXn3QzHYjthazti5P1kCzP57BeL0nQtNG0oYPPzLtJvlkPutTVt71I5c3/QyI15o2icZAH+VYGbnRxH1mBVcj4IHOzyiKpQ6zFOuFZV15bFZVkAAACAGkm3DgpFAbxuwGLENxFELsvz7XOpEZefVoxNAPwUW5AwBUueFZa65XSNFaDQ1Tkn8l1EMN7XRnk27LqjTHKgTY75J7tdjmFWNCXjfhmVqQE1WZpBIHbLgsuNuYauF4C1hnLey7e+N3AbkAFdxN1zYQ2UGSeJA5bvtGhc/1MgYe8=",
        require => File["/home/jubei/.ssh"]
    }

    ssh_authorized_key { "root@glados":
        ensure => present,
        type => "ssh-rsa",
        user => "jubei",
        key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQC+CHyMod2L4myimgaOQNQOiuAZJme3dP5ZPqXRT9u3YIYyxc0rO31a6TqUnNG01QzVHF/L69fUH2hu7z+EUtRNcqjt8ZnJv6SS7aLjXfbR3EadkcrRKnbneB1v+yyiQuRjR6CuvW9KX5yvvUDL8/DIiCybirJeXnUhUOVIyBDPcQdPckRR4OCWbyZUqeiLdVjHqwLE9GYAu3n6MY8+U1YbbJufFXVr+op1TL1yd5RhGcIrrxn194jHDZUbc0bK/8SVuyL95mz22X7mEvNsspqd0HeEV3C9pqBRY4cO1AHTiHl4PiNBeDy90A+kwW/4WydBWLFZ780uoABNUr/OGC7h",
        require => File["/home/jubei/.ssh"]
    }

	file { "zshrc":
		owner => "jubei",
		group => "jubei",
		mode => 644,
		path => "/home/jubei/.zshrc",
		source => "puppet:///modules/accounts/zshrc",
		require => File["/home/jubei"]
	}

    ssh_authorized_key { "ipad-mini":
        ensure => present,
        type => "ecdsa-sha2-nistp521",
        user => "jubei",
        key => "AAAAE2VjZHNhLXNoYTItbmlzdHA1MjEAAAAIbmlzdHA1MjEAAACFBAA/Vjz+HSy4E/Tchv2Pz0q+jBT5vqBRJPXluf/yoUtbmHM9U/MXSaVCl/LihIYTItNYXfGv/1A7XS7uQWF9FsgBqgFP6co17kOMBYRx9BqMOqYEr3DZqZ5YS6cbBHhIUBHXtruoP9PvDxImV4H9CyarvH3aT41ijFPTkBZLv6kPGr6uJw=="
    }

    ssh_authorized_key { "wintermute":
        ensure => present,
        type => "ssh-ed25519",
        user => "jubei",
        key => "AAAAC3NzaC1lZDI1NTE5AAAAILsdoFS4jbXziQcc0aNjdumK8BgCgf8m1B9sgY97Mk6f",
	require => File["/home/jubei/.ssh"]
    }
}
