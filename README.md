# CBFixesAndTweaks
Script to automate CB Fixes and Tweaks
So far this script has been tested on the Toshiba Chromebook 2 (Swanky) running Ubuntu 16.04.
It fixes sound (unfortunately the mic still doesn't work) and keyboard layout.
I will post more info on @ http://www.fascinatingcaptain.com/ with a guide soon

# How to use
Copy and paste these commands in a terminal window and reboot!

cd ~/Downloads; sudo apt-get -y install curl; curl -LOk https://github.com/fascinatingcaptain/CBFixesAndTweaks/archive/master.tar.gz; tar -zxvf master.tar.gz; cd CBFixesAndTweaks-master; sudo -E bash CBFixesAndTweaks.sh

