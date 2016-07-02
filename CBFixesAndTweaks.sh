#!/bin/bash
#
# Script to Fix and apply Tweaks to Chromebooks running Linux
#

# get CB model codename
CBCODENAME=$(sudo dmidecode -s system-product-name)

## functions ##
fix_sound() {
  ## for Baytrail TCB2
  # stop sound service
  sudo alsa force-unload
  
  # make backup of original sound.state file
  sudo cp -n /var/lib/alsa/asound.state /var/lib/alsa/asound.state.bck
  
  # copy new sound.state file
  sudo cp asound.state /var/lib/alsa
}

fix_keyboard_keys() {
	# make backup of original pc config file
	sudo cp -n /usr/share/X11/xkb/symbols/pc /usr/share/X11/xkb/symbols/pc.bck

	# copy new pc config file
	sudo cp pc /usr/share/X11/xkb/symbols/

	# update config
	sudo rm -rf /var/lib/xkb/*
}
## ..functions ##

# check for Baytrail CBs
if [ "$CBCODENAME" == "Swanky" ]
then
	fix_sound
fi
echo "*******************************************************"
echo "Fixed sound for Baytrail Chromebook"

# apply keyboard remapping
fix_keyboard_keys
echo "*******************************************************"
echo "Remapped top row media keys"

## reboot
echo "*******************************************************"
read -p "Your Chromebook will now reboot! Press any key to continue..."
sudo shutdown -r now
