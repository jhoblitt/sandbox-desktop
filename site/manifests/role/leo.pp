class site::role::leo {
  include ::site::profile::base
  include ::site::profile::desktop
  include ::site::profile::ssh
  include ::virtualbox
  include ::vagrant
  include ::smartd
  include ::mcelog
}
