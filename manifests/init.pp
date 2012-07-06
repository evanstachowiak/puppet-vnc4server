# Class vncserver
#
# All install and configure vnc4server
#
# == Parameters
#
#  [*display*]
#    Set display number that vnc4server will be running on
#
# == Examples
#
#  class { 'vnc4server': }
#
# == Requires:
#
class vnc4server (
  $ensure     = 'present',
) inherits params {

  package { 'vnc4server':
    ensure => $ensure,
  }

}
