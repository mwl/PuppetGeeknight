Exec["apt-get-update"] -> Package <| |>

Exec {
    path => "/usr/bin:/usr/sbin:/bin"
}

exec { "apt-get-update" :
    command => "/usr/bin/apt-get update"
}

node /^riak[0-9]+$/ {
	class {"riak":
		riakhost => $ipaddress_eth0,
		riak_ring => "riak@10.0.2.15"
	}
}

# node www {
# 	include gitio
# }
