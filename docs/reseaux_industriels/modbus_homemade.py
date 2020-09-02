#!/usr/bin/env python

from pymodbus.client.sync import ModbusTcpClient

def main():
    client = ModbusTcpClient('127.0.0.1')
    client.write_coil(1, True)
    result = client.read_coils(1,1)
    print(result.bits[0])
    client.close()

if __name__ == "__main__":
    main()