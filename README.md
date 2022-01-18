# PETIFICATION
Configs, Shell-scripts, NodeRED-Flows

## Index
### Mosquitto
- broker.conf : Mosquitto configuration file with brief description.
- broker.acl : Mosquitto ACL Authorize configuration with brief description.
- export.sh : Export configuration file to desired path.
1. Export Config
```
./export.sh --conf
```
2. Export ACL
```
./export.sh --acl
```     
- manage.sh : Start, stop and log broker process.
1. Start Broker
```
./manage.sh --up
```
2. Stop Broker
```
./manage.sh --down
```
3. Show Log
```
./manage.sh --log
```
### NodeRED
- export.sh : Export NodeRED flow JSON file.
- manage.sh : Start, stop and log NodeRED process
1. Start NodeRED
```
./manage.sh --up
```
