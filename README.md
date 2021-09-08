# treehouses ble terminal

Treehouses Remote Ble

## Getting Started

Install [Python-BLE-Server](https://github.com/rrijal53/python-ble-server) on your RPI

### Steps to Install:
1. SSH into your RPI via your terminal, recommend to use Git Bash
2. Enter root account via `sudo -s`
3. Clone the repo into your RPI via `git clone https://github.com/rrijal53/python-ble-server.git`
4. Enter the directory via `cd python-ble-server`
5. Start server via "python3 serverble.py"

Once the server is running, your RPI will be visible to your Remote BLE app

## How to use app

1. Install the application on your device, application is named Treehouses RemoteII
2. For application to work, enable Bluetooth connectivity on your device
3. Press the search button in the middle of the bottom nav bar
4. If your RPI device appears, press `Connect` to connect to your device
5. Once connected, you can expand the Service tile and type messages into the input box to send them to your RPI. Your RPI output will be shown below
