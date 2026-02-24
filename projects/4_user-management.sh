#!/bin/bash
#
#script should be executed with sudo/root access

if [[ "${UID}" -ne 0 ]]
then
	echo "Please run with sudo or root"
	exit 1
fi

#User should provide atleast one argument as username else guide him
if [[  ${#} -eq 0 ]]
then
	echo "Please provide atleast one argument for User_Name"
        echo "Usage: ${0} USERNAME [COMMENT]..."
	exit 1
fi

#Store first argument as user name
USER_NAME="${1}"
#echo $USER_NAME

#In case of more than one argument, store it as account comments
shift
COMMENT="${@}"
#echo $COMMENT

#Create a password
PASSWORD=$(date +%s%N)

#Create user
useradd -c "$COMMENT" -m $USER_NAME

#check if user is successfully created or not
if [[ $? -ne 0 ]]
then
	echo "Account can not be created successfully"
	exit 1
else
	echo "User is created successfully"
fi

#set the password for the user
echo $PASSWORD | passwd --stdin  $USER_NAME

#Check if password is set successfully or not
if [[ $? -ne 0 ]]
then
        echo "Password can not be set successfully"
        exit 1
else
        echo "Password is created successfully"
fi

#Force password change on first login
passwd -e $USER_NAME

#Display username, password and hostname where it is created
echo
echo "Username: $USER_NAME"
echo
echo "Password: $PASSWORD"
echo
echo "Hostname: $(hostname)"


