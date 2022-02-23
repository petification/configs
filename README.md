# Petification/Platform
Configs, Shell-scripts, NodeRED-Flows

## Index
### Global
#### manage.sh
- Global management
1. Show Mosquitto, NodeRED running status(port num)
```
./manage.sh --status
```
### Mosquitto
- broker.conf : Mosquitto configuration file with brief description.
- broker.acl : Mosquitto ACL Authorize configuration with brief description.
#### export.sh
- Export configuration file to desired path.
1. Export Config
```
./export.sh --conf
```
2. Export ACL
```
./export.sh --acl
```     
#### manage.sh
- Start, stop and log broker process.
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
#### user.sh
- Managing MQTT security setting (user)
1. Add user
```
./user.sh --new
```
2. Show all users
```
./user.sh --all
```
### MySQL
- `MySQL` sql file for creating table scheme
### NodeRED
#### export.sh
- Export NodeRED flows & settings.
1. Export settings.js from repository -> to ~/.node-red
```
./export.sh --settings
```
2. Export flows.js from repository -> to ~/.node-red
```
./export.sh --flows
```
#### import.sh
- Import NodeRED flows & settings.
1. Import settings.js from ~/.node-red -> to repository
```
./import.sh --settings
```
2. Import flows.js from ~/.node-red -> to repository
```
./import.sh --flows
```
#### manage.sh
- Start, stop and log NodeRED process
1. Start NodeRED
```
./manage.sh --up
```
2. Stop NodeRED
```
./manage.sh --down
```
3. Show log
```
./manage.sh --log
```
4. Show changes
```
./manage.sh --diff-flows
```
