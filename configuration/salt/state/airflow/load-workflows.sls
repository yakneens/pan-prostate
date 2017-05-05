workflows_prereq:
  pkg.installed:
    - name : git

pcawg-germline-clone:
  git.latest:
    - rev: master
    - force_reset: True
    - name: https://github.com/llevar/pan-prostate.git
    - target: /opt/pan-prostate
    - submodules: True
    
/opt/airflow/dags/pan-prostate:
  file.symlink:
    - target: /opt/pan-prostate/workflows/
    - user: airflow
    - group: airflow
    - mode: 755
    - force: True
    - makedirs: True
 
/tmp/pan-prostate/scripts:
  file.symlink:
    - target: /opt/pan-prostate/scripts/
    - user: root
    - group: root
    - mode: 755
    - force: True
    - makedirs: True