Exec["apt-get-update"] -> Package <| |>

Exec {
    path => "/usr/bin:/usr/sbin:/bin"
}

exec { "apt-get-update" :
    command => "/usr/bin/apt-get update"
}

node /^riak[0-9]+$/ {
	class {"riak":
		riakhost => $ipaddress_eth1,
		riak_ring => "riak@192.168.33.101"
	}
}

# node www {
# 	include gitio
# }
