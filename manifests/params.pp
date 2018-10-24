# # This class manages ubunu_laptop parameters
class ubuntu_laptop::params {

  # Default packages to install with os repository
  $os_packages = ['cryptsetup',
                  'ecryptfs-utils',
                  'filezilla',
                  'git',
                  'golang',
                  'keepassx',
                  'libssl-dev',
                  'nmap',
                  'openssh-server',
                  'openvpn',
                  'python',
                  'python-dev',
                  'python-pip',
                  'terminator',
                  'vim',
                  'virtualbox',
                  'vlc',
                  'wget',
                  'wireshark',
                  'zsh']

  # Default packages to install on atom with atom.io repository
  $atom_packages = ['atom-beautify',
                    'atom-jinja2',
                    'atom-material-ui',
                    'busy-signal',
                    'git-plus',
                    'highlight-selected',
                    'intentions',
                    'language-ansible',
                    'language-chef',
                    'language-docker',
                    'language-groovy',
                    'language-puppet',
                    'language-terraform',
                    'linter',
                    'linter-ansible-linting',
                    'linter-docker',
                    'linter-erb',
                    'linter-golinter',
                    'linter-markdown',
                    'linter-puppet-lint',
                    'linter-pylint',
                    'linter-ruby',
                    'linter-shellcheck',
                    'linter-ui-default',
                    'markdown-preview-plus',
                    'minimap']
}
