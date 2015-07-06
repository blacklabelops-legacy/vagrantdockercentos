#!/bin/bash

set -o errexit    # abort script at first error
vagrant ssh -c "cd /vagrant && ./scripts/buildBaseImage.sh"
