# Class xvfb
#
# All install and configure xvfb
#
# == Parameters
#
#  [*display*]
#    Set display number that xvfb will be running on
#
# == Examples
#
#  class { 'xvfb':
#    display => 5,
#  }
#
# == Requires:
#
class xvfb (
  $ensure     = 'present',
  $display_no = $xvfb::params::display
) inherits params {

  package { 'xvfb':
    ensure => $ensure,
  }

  file { 'xvfb_display_environment':
    ensure  => $ensure,
    path    => '/etc/profile.d/xvfb.sh',
    content => template('xvfb/etc/profile.d/xvfb.sh.erb'),
    mode    => $xvfb::params::profile_d_sh_mode,
    owner   => $xvfb::params::profile_d_sh_owner,
    group   => $xvfb::params::profile_d_sh_group,
  }

}
