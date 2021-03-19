Installing AS3 using a shell script¶

You can also use the following shell script to upload and install the target RPM to the BIG-IP system (the script first uninstalls any existing RPM packages on the BIG-IP).

To use this script, you must have both cURL and jq installed.

1) Copy the script install-rpm.sh to a new file on any system with a UNIX shell installed. We name the file install-rpm.sh.

2) Make the new file an executable script with the following command (use the name you gave the script if different):
   chmod +x install-rpm.sh

3) Use the following command syntax to execute the script and pass it the IP of the target BIG-IP, BIG-IP credentials, and path to the RPM (use the name you gave the script if different):
   ./install-rpm.sh <IP address of BIG-IP> <username>:<password> <path to RPM>
  
4) Select Automation Toolchain you are using.
