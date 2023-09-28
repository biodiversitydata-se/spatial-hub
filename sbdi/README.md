# Spatial-hub

## Setup

Create data directory at `/data/spatial-hub` and populate as below (it is easiest to symlink the config files to the ones in this repo):
```
mats@xps-13:/data/spatial-hub$ tree
.
└── config
    ├── menu-config.json -> /home/mats/src/biodiversitydata-se/spatial-hub/sbdi/data/config/menu-config.json
    ├── spatial-hub-config.yml -> /home/mats/src/biodiversitydata-se/spatial-hub/sbdi/data/config/spatial-hub-config.yml
    └── view-config.json -> /home/mats/src/biodiversitydata-se/spatial-hub/sbdi/data/config/view-config.json
```

## Usage

Run locally:
```
make run
```

Build and run in Docker (using Tomcat):
```
make run-docker
```

Make a release. This will create a new tag and push it. A new Docker container will be built on Github.
```
mats@xps-13:~/src/biodiversitydata-se/spatial-hub (master *)$ make release

Current version: 1.0.1. Enter the new version (or press Enter for 1.0.2): 
Updating to version 1.0.2
Tag 1.0.2 created and pushed.
```
