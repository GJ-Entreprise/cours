# Exercices modbus
##### Julien Faou  

## Installation modbus

```
sudo pip3 install pyModbus
```

## Exercice 1 - Compromission avec modbus-cli

```
sudo modbus read -h
Usage:
    modbus read [OPTIONS] HOST ADDRESS COUNT

Parameters:
    HOST                             IP address or hostname for the Modbus device
    ADDRESS                          Start address (eg %M100, %MW100, 101, 400101)
    COUNT                            number of data to read

Options:
    -w, --word                       use unsigned 16 bit integers
    -i, --int                        use signed 16 bit integers
    -d, --dword                      use unsigned 32 bit integers
    -f, --float                      use signed 32 bit floating point values
    --modicon                        use Modicon addressing (eg. coil: 101, word: 400001)
    --schneider                      use Schneider addressing (eg. coil: %M100, word: %MW0, float: %MF0, dword: %MD0)
    -s, --slave ID                   use slave id ID (default: 1)
    -p, --port PORT                  use TCP port (default: 502)
    -o, --output FILE                write results to file FILE
    -D, --debug                      show debug messages
    -T, --timeout TIMEOUT            Specify the timeout in seconds when talking to the slave
    -C, --connect-timeout TIMEOUT    Specify the timeout in seconds when connecting to TCP socket
    -h, --help                       print help
```

__A l’aide de la commande modbus read, lisez les 5 premiers registres de type bit__
```
sudo modbus 192.168.43.161 1 5
```
```
1          1
2          1
3          1
4          1
5          1
```

```
sudo modbus -i 192.168.43.161 1 5
```


## Exercice 2 - Scan avec Nmap

__Executer un nmap avec un script nse dédié à l’énumération pour modbus__

```
nmap --script-help "*modbus*"
```

```
Starting Nmap 7.80 ( https://nmap.org ) at 2020-09-01 14:24 CEST

modbus-discover
Categories: discovery intrusive
https://nmap.org/nsedoc/scripts/modbus-discover.html
  Enumerates SCADA Modbus slave ids (sids) and collects their device information.

  Modbus is one of the popular SCADA protocols. This script does Modbus device
  information disclosure. It tries to find legal sids (slave ids) of Modbus
  devices and to get additional information about the vendor and firmware. This
  script is improvement of modscan python utility written by Mark Bristow.

  Information about MODBUS protocol and security issues:
  * MODBUS application protocol specification:  http://www.modbus.org/docs/Modbus_Application_Protocol_V1_1b.pdf
  * Defcon 16 Modscan presentation: https://www.defcon.org/images/defcon-16/dc16-presentations/defcon-16-bristow.pdf
  * Modscan utility is hosted at google code: http://code.google.com/p/modscan/
```

```
nmap -sT -p502 --script modbus-discover 192.168.43.161
```

```
Starting Nmap 7.80 ( https://nmap.org ) at 2020-09-01 14:48 CEST
Nmap scan report for 192.168.43.161
Host is up (0.00087s latency).

PORT    STATE    SERVICE
502/tcp filtered mbap

Nmap done: 1 IP address (1 host up) scanned in 0.50 seconds
```

## Exercice 3

__Trouver au moins un exploit existant dans exploit-db.com concernant un serveur modbus__









