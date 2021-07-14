#!/usr/bin/env bash

alias console.refresh="source _console.sh"

AXON_CLI_EXEC="$HOME/.m2/repository/io/axoniq/axonserver/axonserver-cli/4.5.4.1/axonserver-cli-4.5.4.1-exec.jar"
PLUGIN_ARTIFACT="axon-server-plugin-example"
PLUGIN_NAME="io.holixon.axon.example.$PLUGIN_ARTIFACT"
PLUGIN_VERSION="0.0.1"

projectdir=`pwd`

alias axon-cli.upload="$AXON_CLI_EXEC upload-plugin -f $projectdir/target/$PLUGIN_ARTIFACT-$PLUGIN_VERSION.jar"

alias axon-cli.activate="$AXON_CLI_EXEC activate-plugin -p $PLUGIN_NAME -v $PLUGIN_VERSION"
alias axon-cli.pause="$AXON_CLI_EXEC pause-plugin -p $PLUGIN_NAME -v $PLUGIN_VERSION"
alias axon-cli.delete="$AXON_CLI_EXEC delete-plugin -p $PLUGIN_NAME -v $PLUGIN_VERSION"

alias axon-server.start="docker compose up"
