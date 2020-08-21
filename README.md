# docker-redis-cluster

Run redis cluster on docker.
Docker hub: (https://hub.docker.com/r/heroahmadi/redis-cluster)

## Usage

```docker run -v redis-cluster-data:/redis-cluster -p 6001-6006:6001-6006 heroahmadi/redis-cluster```

## Connect from redis-cli

```redis-cli -c -p 6001```

## Others

This image is tested running on windows host, docker desktop with docker engine v19.03.8