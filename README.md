# Simple docker compose based minecraft server with web admin

This uses https://github.com/itzg/docker-minecraft-server and https://github.com/hcsama/MCAdmin.

Before installing and running, please check that you have `docker` and `docker-compose` properly installed and configured.

## Installation

Clone this repo in a directory overriding the world's name:

```sh
git clone https://github.com/joc-mer/mc-server-compose.git <MY_WORLD_NAME>
cd <MY_WORLD_NAME>
```

**Note that this name is important because it will define the container's names**.

## Configuration

Create a sample config using
```sh
./configure
```

Override the properties in `local-config.properties` if necessary.

## Start the server

In order to:
- start the containers, 
- create a new world if no one exists and
- open the web browser with the admin.
<br />

Execute:
```sh
./start
```

## Stop the server

To stop the containers.
Execute:
```sh
./stop
```
The server's data are persisted in the `server-data` directory.

## Use the remote control on the CLI

To have a minecraft server admin command prompt, execute:
```sh
./rcon
```
 To quit, type `ctrl+C`.

## Override minecraft server configuration

When started at least once, the minecraft server native properties can be edited in `server-data/server.properties`. Then execute:

```sh
./stop
./start
```
