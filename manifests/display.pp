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
