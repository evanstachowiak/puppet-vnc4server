# Class xvfb:params
#
# Default params for xvfb
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
class xvfb::params {

  $display_no         = '5'
  $profile_d_sh_mode  = '0644'
  $profile_d_sh_owner = 'root'
  $profile_d_sh_group = 'root'

  # Fail if the OS is not Ubuntu/Debian
  case $::operatingsystem {
    ubuntu, debian: {
    }
    default: {
      fail("Unsupported platform: ${::operatingsystem}")
    }
  }
}
