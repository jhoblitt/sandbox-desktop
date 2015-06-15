class site::profile::base {
  include ::augeas
  include ::sysstat
  include ::irqbalance
  include ::wget
  include ::ntp

  if $::osfamily == 'RedHat' and $::operatingsystem != 'Fedora' {
    include ::epel

    Class['epel'] -> Package<| provider != 'rpm' |>

    # note:
    #   * el6.x will update everything
    #   * the jenkins package is only present on the master
#    class { '::yum_autoupdate':
#      exclude      => ['kernel*', 'jenkins'],
#      notify_email => false,
#      action       => 'apply',
#      update_cmd   => 'security',
#    }
  }
}
