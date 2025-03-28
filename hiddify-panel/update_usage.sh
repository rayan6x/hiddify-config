#!/bin/bash

cd $( dirname -- "$0"; )
function main(){
    echo "trying to update usage"
    pgrep -f 'update-usage' || su hiddify-panel -c "python3 -m hiddifypanel update-usage"
}
main |& tee -a ../log/system/update_usage.log