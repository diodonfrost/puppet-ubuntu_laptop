# Install Hashicorp provider.
class ubuntu_laptop::packages::hashicorp {

  # Install Vagrant
  package {'vagrant':
    ensure => installed,
    source => 'https://releases.hashicorp.com/vagrant/2.2.1/vagrant_2.2.1_x86_64.deb',
  }

  # Install Packer
  archive {'packer_1.3.4_linux_amd64.zip':
    ensure       => present,
    path         => '/tmp/packer_1.3.4_linux_amd64.zip',
    extract      => true,
    source       => 'https://releases.hashicorp.com/packer/1.3.4/packer_1.3.4_linux_amd64.zip',
    extract_path => '/usr/local/bin',
    cleanup      => true,
    creates      => '/usr/local/bin/packer',
    require      => Package['unzip'],
  }

  # Install Terraform
  archive {'terraform_0.11.11_linux_amd64.zip':
    ensure       => present,
    path         => '/tmp/terraform_0.11.11_linux_amd64.zip',
    extract      => true,
    source       => 'https://releases.hashicorp.com/terraform/0.11.11/terraform_0.11.11_linux_amd64.zip',
    extract_path => '/usr/local/bin',
    cleanup      => true,
    creates      => '/usr/local/bin/terraform',
    require      => Package['unzip'],
  }

  # Install Terragrunt
  file {'/usr/local/bin/terragrunt':
    ensure => present,
    source => 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.18.0/terragrunt_linux_amd64',
    mode   => '0755',
  }
}
