#!/bin/bash
#echo "************************* Please enter your full name:****************************"
#read name
echo "

"
echo "**************************************************************  Hello $(whoami), Welcome to our Program on task automation!!!  ******************************************************************"
echo "

"

echo "************************* Which operation will you like to carryout  *******************************"
echo "

"

echo "************************* Menu 1: System Inspection and Report ********************************"

echo "************************* Menu 2: File Operation ********************************"

echo "************************* Menu 3: Data Fetching *********************************"

echo "************************* Exit Program ******************************************"

echo " "
read choice
menu1(){
	echo "****************************************************** Listing all current running processes and outputing it in an external file ********************************************************"
	for ((i=0; i<=100; i+=2))
	do
		echo -ne "Operation loading.......................................................$i%\r"
		sleep 0.1
	done
	sleep 0.4
	ps aux > ./automation/process.txt
	head -10 ./automation/process.txt

	sleep 2
	echo " 
	
	
	
	"
	
	echo "************************************************** displaying disk usage and directories with higher space and outputing it in a file disk-usage.txt **********************************************"
	for ((i=0; i<=100; i+=2))
	do
		echo -ne "Operation loading.......................................................$i%\r"
		sleep 0.1
	done
	sleep 0.4
	du -h --max-depth=1 | sort -hr > ./automation/disk-usage.txt
	more ./automation/disk-usage.txt

	sleep 2
	echo " 
	
	
	
	"

	echo "************************************************** Checking active network connections and outputing it in a fille network.txt ************************************************************"
	
	for ((i=0; i<=100; i+=2))
	do
		echo -ne "Operation loading.......................................................$i%\r"
		sleep 0.1
	done
	sleep 0.4
	netstat -tupan > ./automation/network.txt
	head -10 ./automation/network.txt

	sleep 2
	echo " 
	
	
	
	"

	echo "************************************************* Backing up a specified directory in a specified location ************************************************************************"
	
	for ((i=0; i<=100; i+=2))
	do
		echo -ne "Operation loading.......................................................$i%\r"
		sleep 0.1
	done
	sleep 0.4
	
	cp -r automation /home/hush/Documents
	echo "*************************************************************** Backup Successfull: ***********************************************************"
	
	sleep 2
	echo " 
	
	
	
	"
	
	echo "*************************************************** This script performs the following tasks: ************************************************************************************"

    	echo "Summary of Tasks:
	-----------------
	1. List running processes using the 'ps' command and save the output to the 'running_processes.txt' file.$'\n'
	2. Check disk usage using the 'du' command and save the output to the 'disk_usage.txt' file.$'\n'
	3. Check active network connections using the 'netstat' command and save the output to the 'network_connections.txt' file.$'\n'
	4. Back up the specified directory to the chosen location using the 'cp' command.$'\n'
	5. Generate a report summarizing the findings and present it on the terminal."
}

exit1(){
	for ((i=0; i<=100; i+=2))
	do
		echo -ne " Exiting.......................................................$i%\r"
		sleep 0.2
	done
	# echo "*********************************** Are you sure you want to quit the program ? y/n ***************************************"
	# read var
	# if [[ "$var" == "y" || "$var" == "Y" ]]; then	
		echo "************************** You quit the program successfully ***********************************"
	# 	exit 0	
	# else
	# 	echo "************************** Please select a menu : ***************************************** $choice"
	# fi
}
case $choice in
	1)
		echo "***************** You chosed menu 1: System Inspection and Report ********************"
		menu1	
		;;
	2)
		echo "***************** You chosed menu 2: File Operations ********************"
		;;
	3)
		echo "***************** You chosed menu 3: Data Fetching **********************"
		;;
	Exit)
		echo "*********************** Quit the Program!!!! ****************************" 
		exit1
		;;
esac
