base:
  '*':
    - base.auto-highstate
    - base.salt
    - base.sanity
    - base.mail
    - groups
    - users
    - ssh
    - firewall
    - sudoers
    - backup.client
    - monitoring.client
    - unattended-upgrades
    - psf-ca

  '* and not G@roles:vpn':
    - match: compound
    - openvpn.routing

  'roles:backup-server':
    - match: grain
    - backup.server

  'roles:cdn-logs':
    - match: grain
    - cdn-logs

  'roles:docs':
    - match: grain
    - docs

  'roles:downloads':
    - match: grain
    - downloads

  'roles:hg':
    - match: grain
    - hg

  'roles:tracker':
    - match: grain
    - postgresql.client

  'roles:jython-web':
    - match: grain
    - jython

  'roles:planet':
    - match: grain
    - planet

  'roles:postgresql':
    - match: grain
    - postgresql.server
    - monitoring.client.collectors.postgresql

  'roles:loadbalancer':
    - match: grain
    - haproxy

  'roles:salt-master':
    - match: grain

  'roles:vpn':
    - match: grain
    - duosec
    - openvpn.server

  'roles:monitoring':
    - match: grain
    - monitoring.server
