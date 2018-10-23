# Install minikube
class ubuntu_laptop::packages::minikube {

  # Download minikube executable
  exec {'retrieve minikube':
    command => 'wget -q http://storage.googleapis.com/minikube/releases/v0.30.0/minikube-linux-amd64 -O /usr/local/bin/minikube',
    path    => ['/usr/bin', '/usr/sbin',],
    creates => '/usr/local/bin/minikube',
  }

  # Set minikube executable for all users
  file {'/usr/local/bin/minikube':
    ensure  => file,
    mode    => '0755',
    require => Exec['retrieve minikube'],
  }
}
