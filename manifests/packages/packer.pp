# Install provisionner Vagrant.
class ubuntu_laptop::packages::packer {

  # Install Vagrant
  archive {'packer_1.3.2_linux_amd64.zip':
    ensure       => present,
    path         => '/tmp/packer_1.3.2_linux_amd64.zip',
    extract      => true,
    source       => 'https://releases.hashicorp.com/packer/1.3.2/packer_1.3.2_linux_amd64.zip',
    extract_path => '/usr/local/bin',
    cleanup      => true,
    creates      => '/usr/local/bin/packer',
    require      => Package['unzip'],
  }
}
