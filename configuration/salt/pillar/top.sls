base:
  '*':
    - saltmine
    - genome-reference
    - genome-reference.grch37d5_sanger_zipped
  'G@roles:worker':
    - test-data
    - pcawg-data
    - run-tracking-db
    - airflow
  'G@roles:tracker':
    - run-tracking-db
    - airflow
