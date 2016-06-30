#!/bin/bash

## need to check if this is Baytrail TCB2
# sudo dmidecode -s system-product-name

## will need to test when I get home
fix_sound() {
  ## fix sound
  # stop sound service
  sudo alsa force-unload
  
  # make backup of original sound.state file
  sudo cp -n /var/lib/alsa/asound.state /var/lib/alsa/asound.state.bck
  
  # copy new sound.state file
  sudo cp asound.state /var/lib/alsa
}

## fix keyboard
# make backup of original pc config file
sudo cp -n /usr/share/X11/xkb/symbols/pc /usr/share/X11/xkb/symbols/pc.bck

# copy new pc config file
sudo cp pc /usr/share/X11/xkb/symbols/

# update config
sudo rm -rf /var/lib/xkb/*

## reboot
echo "*******************************************************"
read -p "Your Chromebook will now reboot! Press any key to continue..."
sudo shutdown -r now
