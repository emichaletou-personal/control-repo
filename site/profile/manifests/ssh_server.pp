class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCvBPYwDzMTri6exWOjfPxXlhswuLZ5+Y7weQJhBmz7LCIGZKCRqh7NhwBVCe16KQqrSs7TCdMTt9nu/5oXWUYW8TkiEig1EpxPD++KJVZZtuevxarOAG4L1neikc/X81o9JYQDEXnNQaKBwq9O+zvnrsvizXRpRsfD9D3bL0Fy4X8+majsQYrbqsHTXo97uCxc/GdaxD7KetLX9I/Vt8lrJoO+uwNzkTfFtwfHKMsOex28Dj+3iTUVNWLtkJsRPWK7zAqUF+ae0QG+2ENI6acqzWd4ziEDKZHpa52mrjRhIz9b9ECZrk0Jr+k9q6r6qiyk1HULBfiwha90jAaux8O1',
	}  
}
