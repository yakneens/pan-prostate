gnos_share:
  file.append:
    - name: /etc/dnsmasq.d/10-gnos
    - text: "server=/em-isi-3109.ebi.ac.uk/10.35.109.201"
    - makedirs: True