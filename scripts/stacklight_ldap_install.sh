install_openldap_script="https://raw.githubusercontent.com/openstack/stacklight-integration-tests/master/fixtures/ldap/install_slapd.sh"
salt -C 'I@salt:master' cmd.shell " ps aux|grep -v grep|grep slapd || { cd /tmp && wget $install_openldap_script && bash install_slapd.sh && rm /tmp/install_slapd.sh; }"
