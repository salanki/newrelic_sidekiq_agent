#!/bin/bash

perl -p -e 's/\$\{([^}]+)\}/defined $ENV{$1} ? $ENV{$1} : ""/eg' docker/newrelic_plugin.yml.tmpl > config/newrelic_plugin.yml
exec "$@"
