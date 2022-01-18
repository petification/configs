# PETIFICATION
Configs, Shell-scripts, NodeRED-Flows

## Index
- Mosquitto
    - broker.conf : Mosquitto configuration file with brief description.
    - broker.acl : Mosquitto ACL Authorize configuration with brief description.
    - export.sh : Export configuration file to desired path.
        - Export Config
```
./export.sh --conf
```
        - Export ACL
```
./export.sh --acl
```
    - manage.sh : Start, stop and log broker process.
        - Start Broker
```
./manage.sh --up
```
        - Stop Broker
```
./manage.sh --down
```
        - Show Log
```
./manage.sh --log
```
- NodeRED
    - export.sh : Export NodeRED flow JSON file.
    - manage.sh : Start, stop and log NodeRED process
        - Start NodeRED
```
./manage.sh --up
```
