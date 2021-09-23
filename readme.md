Instructions ------

1) From the machine that has access to the F5 change the current working directory to the location where you want the cloned directory.

2) Type git clone, and then paste the URL of the repo -- (This will copy the repo from github to your local machine) 
      git clone https://github.com/antipawl/f5_toolchains.git

To use these scripts, you must have both cURL and jq installed.

cURL-
https://curl.se/download.html

jq-
https://stedolan.github.io/jq/download/


rpm_get.sh - Documentation

This script is to download the latest version of automation toolchains to your local machine.
1) run the script and you will see a menu for automation toolchains
      sh ./rpm_get.sh

2) select the toolchain you'd like and you'll get the lateset available from the f5_networks github repo.




install-rpm.sh - Documentation

You can use the following shell script to upload and install the target RPM to the BIG-IP system (the script first uninstalls any existing RPM packages on the BIG-IP).

1) Make install-rpm.sh an executable script with the following command:
   chmod +x install-rpm.sh

2) Use the following command syntax to execute the script and pass it the IP of the target BIG-IP, BIG-IP credentials, and path to the RPM: ./install-rpm.sh IP address of BIG-IP username:password path to RPM file    

example: ./install-rpm.sh 1.1.1.1 admin:admin /Users/root/Downloads/f5-telemetry-1.18.0-2.noarch.rpm 
  
3) Menu will appear select Automation Toolchain you are using.
