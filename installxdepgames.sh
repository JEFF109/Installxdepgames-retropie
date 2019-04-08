#!/bin/bash
clear
echo ---------------------------------
echo   X dependency game installer
echo          for Retropie
echo ---------------------------------
echo    Install games that require
echo   a GUI to be played in Retropie
echo ---------------------------------
if [$1 null]
then
echo Example:
echo "installxdepgames.sh <exact/location/of/game> <output.sh>"
exit
fi
echo Creating launcher for $1 Step 1 of 3
echo "#!/bin/bash" >> /home/pi/RetroPie/roms/ports/$2
echo Creating launcher for $1 Step 2 of 3
echo "xinit "$1" "\$"* -- :0 vt"\$"XDG_VTNR" >> /home/pi/RetroPie/roms/ports/$2
echo Creating launcher for $1 Step 3 of 3
sudo chmod +x /home/pi/RetroPie/roms/ports/$2
echo Launcher created for $1 as $2
exit