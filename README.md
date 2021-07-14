# axon-server-plugin-example

A simple "hello world" example using the [axon server plugin api](https://github.com/AxonIQ/axon-server-plugin-api)

## Running the example

* mvn package create bundle jar in target/
* upload the jar to an axon server

You can use the docker compose file to run the server.

For convenience, import the `_console.sh` to your shell and provide the path to the axonserver-cli, then you can use the aliases:

* `axon-cli.upload` - uploads the jar in target/
* `axon-cli.activate`
* `axon-cli.pause`
* `axon-cli.delete`

## Axon Server Configuration

For this example, the server is run via [docker-compose.yml](./docker-compose.yml) 

When you try to upload a plugin jar for the first time, you will encounter a file-size exception. So you have to allow larger file uploads by configuring the servlet upload by setting:

```
      - SPRING_SERVLET_MULTIPART_MAX-FILE-SIZE=16MB
      - SPRING_SERVLET_MULTIPART_MAX-REQUEST-SIZE=16MB
```

