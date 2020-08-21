# docker-redis-cluster

Run redis cluster on docker.
Docker hub: (https://hub.docker.com/r/heroahmadi/redis-cluster)

## Usage

```docker run -v redis-cluster-data:/redis-cluster -p 6001-6006:6001-6006 heroahmadi/redis-cluster```

## Connect from redis-cli

```redis-cli -c -p 6001```

## Others

Built with windows host | docker desktop | docker engine v19.03.8
