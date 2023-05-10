#!/usr/bin/env bash

WORKSPACE_DIR=$HOME/workspace
TEAM_DIR=pd

if [ -d "$WORKSPACE_DIR" ] 
then
    echo "Directory $WORKSPACE_DIR" 
else
    echo "Error: Directory $WORKSPACE_DIR does not exists. Creating..."
    mkdir $WORKSPACE_DIR
fi

echo
echo "Checking out Github repositories"

#DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

DEST="$WORKSPACE_DIR/$TEAM_DIR"

GITHUB_REPOS=(
    "pd-labdips"
    "pd-spring-boot-template"
    "Create-Color-App"
    "flexplm-acl"
    "inspectorio-integration"
    "mdm-color-app"
    "pd-colorway-service"
    "pd-costing-service"
    "pd-ecvision-acl"
    "pd-fabric-service"
    "pd-mdm-acl"
    "pd-spring-cloud-gateway"
    "pd-user-management"
    "pd-vdr-app"
    "pd-vdr-service"
    "pdcc-table-features"
    "TAC-Calendar-Service"
    "TAC-Calendar-UI"
    "wip-nightly-extract"
    "reporting-mails-app"
    "product-testing-nightly-extract"
    "pregame-nightly-extract"
    "po-nightly-extract"
    "po-iteration-nightly-extract"
    "po-insp-extract"
    "packing-list-nightly-extract"
    "capture-integration"
    "compliance-nightly-extract"
    "ecvision-edi-856-interface"
    "ecvision-sci-interface"
)

for REPO in ${GITHUB_REPOS[@]}; do
    if [ ! -d $DEST/$REPO ]; then
        echo "Cloning ${REPO}"
        git clone https://github.com/dsg-tech/$REPO.git $DEST/$REPO
    else
        echo "Repo ${REPO}" exists.
    fi
done
