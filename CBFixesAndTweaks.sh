#!/bin/bash

# stop sound service
sudo alsa force-unload

# make backup of original sound.state file
sudo cp /var/lib/alsa/asound.state /var/lib/alsa/asound.state.bck

# cp new sound.state file
sudo cp asound.state /var/lib/alsa
