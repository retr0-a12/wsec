#!bin/bash
echo "ver correos con holehe [1]"
echo "ver WAF con wafw00f [2]"
echo "cammbiar la mac con macchanger [3]"
echo "escanear con wpscan [4]"
echo "activar ufw [5]"
echo -n "elige-->"
read elige
if [ $elige = 1 ]; then
echo -n "correo -->"
read correo
if [ $correo = $correo ]; then
holehe --only-used $correo
fi
elif [ $elige = 2 ]; then
echo -n "target-->"
read target
if [ $target = $target ]; then
   wafw00f $target
fi
elif [ $elige = 3 ]; then
echo "eth0 [1]"
echo "lo [2]"
echo -n "elige-->"
read elige
if [ $elige = 1 ]; then
macchanger -r eth0
elif [ $elige = 2 ]; then
macchanger -r lo
fi
elif [ $elige = 4 ]; then 
echo -n "targ3t-->"
read targ3t
if [ $targ3t = $targ3t ]; then
wpscan $targ3t
fi
elif [ $elige = 5 ]; then
apt-get install ufw
ufw enable
fi
