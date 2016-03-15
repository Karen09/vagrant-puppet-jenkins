##
##
##
class roles::jenkins {

  include profiles::jenkins

  service {'firewalld':
    ensure => stopped,
  }
}