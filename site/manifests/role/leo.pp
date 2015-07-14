class site::role::leo {
  include ::site::profile::base
  include ::site::profile::desktop
  include ::site::profile::ssh
  include ::virtualbox
  # https://github.com/mitchellh/vagrant/issues/5958
  class { '::vagrant': version => '1.7.2' }
  include ::smartd
  include ::mcelog
}
