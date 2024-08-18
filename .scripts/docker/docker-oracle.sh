
#!/bin/bash

sudo docker exec -it Identitek bash

sleep 13

sqlplus sys/"sudo oracle-rebuild switch"@localhost:1521 as sysdba

sleep 13

SHOW CON_NAME

sleep 1

SHOW PDBS
