# Class vnc4server::params
#
# Default params for vnc4server
#
# == Parameters
#
#  [*profile_d_sh_mode*]
#    Mode of /etc/profile.d/xvfb.sh
#  [*profile_d_sh_owner*]
#    Owner of /etc/profile.d/xvfb.sh
#  [*profile_d_sh_group*]
#    Group of /etc/profile.d/xvfb.sh
#
# == Examples
#
#
# == Requires:
#
class vnc4server::params {

  $display_no         = '5'
  $profile_d_sh_mode  = '0644'
  $profile_d_sh_owner = 'root'
  $profile_d_sh_group = 'root'

  $user               = 'root'
  $depth              = '16'
  $geometry           = '1920x1080'
  $options            = "-name ${name} -depth ${depth} -geometry ${geometry} :${display}"

  # Fail if the OS is not Ubuntu/Debian
  case $::operatingsystem {
    ubuntu, debian: {
    }
    default: {
      fail("Unsupported platform: ${::operatingsystem}")
    }
  }
}
