#!/usr/bin/bash

rm -rf /data/media/0/realdata/*

echo -n 1 > /data/params/d/SshEnabled
echo -n 1 > /data/params/d/RecordFront
echo -n 1 > /data/params/d/CommunityFeaturesToggle
echo -n 1 > /data/params/d/IsUploadRawEnabled
echo -n 2 > /data/params/d/HasAcceptedTerms
echo -n "0.2.0" > /data/params/d/CompletedTrainingVersion

setprop persist.neos.ssh 1
tools/scripts/setup_ssh_keys.py commaci2

export PASSIVE="0"
exec ./launch_chffrplus.sh

