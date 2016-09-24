# HMDocker

## Docker container setup for a Hapi Server with MongoDB

## Note
This is a work in progress! I strongly recommend to NOT use this.


## Instructions
This configuration assumes that you have the following folder structure:

```
 | project
 | ---- server
 | -------- (your files)
 | -------- index.js
 | ---- HMDocker
 | -------- docker-compose.yml
 | -------- Dockerfile
 | -------- LICENSE
 | -------- README.md
```

### Build image

To build the image run:  
- `cd HMDocker`  
- `docker build -t hapi-server .  `

To run the container
- `docker-compose up`






