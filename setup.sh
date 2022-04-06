#!/usr/bin/env bash
#
# setup.sh:  run the DSG workstation setup
#
# Arguments:
#   
#

# Fail immediately if any errors occur
set -e

MY_DIR="$(dirname "$0")"
export HOMEBREW_NO_ANALYTICS=1

# Note: Homebrew needs to be set up first
source ${MY_DIR}/scripts/common/homebrew.sh
source ${MY_DIR}/scripts/common/applications-common.sh
source ${MY_DIR}/scripts/common/configurations.sh
source ${MY_DIR}/scripts/common/configuration-osx.sh

# For each command line argument, try executing the corresponding script in opt-in/
for var in "$@"
do
    echo "$var"
    FILE=${MY_DIR}/scripts/opt-in/${var}.sh
    echo "$FILE"
    if [ -f $FILE ]; then
        source ${FILE}
    else
       echo "Warning: $var does not appear to be a valid argument. File $FILE does not exist."
    fi
done

source ${MY_DIR}/scripts/common/finished.sh
