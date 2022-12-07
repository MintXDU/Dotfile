#!/bin/bash

echo $$ > /home/mint/.config/clash/clash.pid

# diff ${HOME}/.config/clash/config.yaml <(curl -s ${CLASH_URL})

if [ "$?" == 0 ]
then
	# If they are the same
	/usr/bin/clash
else
	# To store the current configuration file for safety
	cp /home/mint/.config/clash/config.yaml "/home/mint/.config/clash/config.yaml.back"
	# To download the file
	curl -L -o /home/mint/.config/clash/config.yaml ${CLASH_URL}
	# To exec clash
	/usr/bin/clash
fi
