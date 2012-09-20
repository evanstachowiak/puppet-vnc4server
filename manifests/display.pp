# Define vnc4server::display
#
# All install and configure vnc4server
#
# == Parameters
#
#  [*display_no*]
#    Set display number that vnc4server will be running on
#  [*user*]
#    User the vncserver will be run under 
#  [*display_name*]
#    Name of the vnc display
#  [*geometry*]
#    Geometry of the display
#  [*depth*]
#    Color-depth the display of display
#  [*options*]
#    Pass in arbitrary options instead of setting config parameters
#
# == Examples
#
#  vnc4server::display { 'my-vnc-server':
#    display_no => '5',
#  }
#
# == Requires:
#
define vnc4server::display (
  $display_no,
  $user         = $vnc4server::params::user,
  $depth        = $vnc4server::params::depth,
  $geometry     = $vnc4server::params::geometry,
  $display_name = $name,
  $options      = undef
 
) {

  Class['vnc4server'] -> Vnc4server::Display["$name"]

  file { "/etc/init.d/vncserver${display_no}" :
    ensure  => present,
    mode    => 755,
    owner   => root,
    group   => root,
    content => template("vnc4server/etc/init.d/vncserver"),
    require => Package['vnc4server'],
  }

  exec { "rc_vncserver" :
    command => "/usr/sbin/update-rc.d vncserver${display_no} defaults",
    onlyif => "/usr/bin/test ! -f /etc/rc2.d/S20vncserver${display_no}",
    require => File["/etc/init.d/vncserver${display_no}"],
  }

}
