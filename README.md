# docker-tabula-java

A minimal Docker image for running the [tabula-java](https://github.com/tabulapdf/tabula-java) from a Docker container. Based on [java:openjdk-8-jre-alpine](https://hub.docker.com/_/java/).

## Running

Mount the PDF file you wish to convert as a volume against the container by using the `-v` option on the `docker run` command. As an example:

```sh
docker run --rm -v /full/path/to/my/file.pdf:/data.pdf othyn/tabula-java [tabula options] /data.pdf > output.csv
```

Further commandline arguments can be found in the [tabulapdf/tabula-java documentation](https://github.com/tabulapdf/tabula-java).
