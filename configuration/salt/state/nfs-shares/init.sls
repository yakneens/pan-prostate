    
/etc/fstab:    
  file.append:
    - text: "em-isi-3109.ebi.ac.uk:/ifs/gnos-01      /gnosdata       nfs     ro      0 0\nem-isi-3108.ebi.ac.uk:/ifs/pan-prostate-01      /pan-prostate       nfs     defaults      0 0"
    - makedirs: True

run_dhclient:
  cmd.run:
    - name: dhclient
    
      
update_resolv_conf_local_dns:
  file.prepend:
    - name: /etc/resolv.conf
    - text:
      - nameserver 127.0.0.1
    - require:
      - run_dhclient
      
update_resolv_conf_google_dns:
  file.prepend:
    - name: /etc/resolv.conf
    - text:
      - nameserver 8.8.8.8
    - require:
      - run_dhclient
      
mount_shares:
  cmd.run:
    - name: mount -a
    - require:
      - update_resolv_conf_local_dns

      