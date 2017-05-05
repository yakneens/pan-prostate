pan_prostate_share:
  file.append:
    - name: /etc/dnsmasq.d/10-pan-prostate
    - text: "server=/em-isi-3108.ebi.ac.uk/10.35.108.201"
    - makedirs: True