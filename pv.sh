#!/bin/bash
#if [ "$PVS" = "true" ]; then

#       curl -o vol.yaml $SCRIPT_REPO/vol.yaml

        for i in `seq -f "%04g" 1 20`;
        do

		DIRNAME="pv$i"
		mkdir -p /mnt/data/$DIRNAME 
		chcon -Rt svirt_sandbox_file_t /mnt/data/$DIRNAME
		chmod 777 /mnt/data/$DIRNAME
                
                #sed "s/name: pv/name: pv$i/g" vol.yaml > oc_vol.yaml
		sed "s/pv/pv$i/g" vol.yaml > oc_vol.yaml
                oc create -f oc_vol.yaml
                echo "created pv$i"
        done
        rm oc_vol.yaml
