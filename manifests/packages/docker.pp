# Install docker and docker-compose
class ubuntu_laptop::packages::docker {

  include 'docker'

  # Download minikube executable
  exec {'retrieve docker-compose':
    command => 'wget -q https://github.com/docker/compose/releases/download/1.23.0-rc2/docker-compose-Linux-x86_64 -O /usr/local/bin/docker-compose',
    path    => ['/usr/bin', '/usr/sbin',],
    creates => '/usr/local/bin/docker-compose',
  }

  file {'/usr/local/bin/docker-compose':
    ensure  => file,
    mode    => '0755',
    require => Exec['retrieve docker-compose'],
  }
}
