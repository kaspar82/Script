/usr/local/src/installRStudio.sh:
  file.managed:
    - source: salt://installRStudio.txt
    - user: root
    - group: root
    - mode: 644

compile_and_install:
  cmd.run:
    - require:
      - file: /usr/local/src/installRStudio.sh
    - name : sudo sh  /usr/local/src/installRStudio.sh
    - user: root
    - group: root
    - shell: /bin/bash