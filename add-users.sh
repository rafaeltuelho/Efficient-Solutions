#!/bin/sh

EAP_APP_USERS_FILE='standalone/configuration/application-users.properties'

echo Please, enter the JBOSS_HOME where the RHPAM 7 was deployed and configured.
echo 
read -p 'JBOSS_HOME: ' jboss_home

if [ -d $jboss_home ] && [ -e $jboss_home/$EAP_APP_USERS_FILE ]; then
    echo
    echo "  - enabling demo accounts..."
    echo

    $jboss_home/bin/add-user.sh -a -r ApplicationRealm -u Alice -p redhatpam1! -ro manager,user --silent
    echo "\t'Alice' user created with 'manager,user' roles and password 'redhatpam1!'"
    $jboss_home/bin/add-user.sh -a -r ApplicationRealm -u Peter -p redhatpam1! -ro manager,user --silent
    echo "\t'Peter' user created with 'manager,user' roles and password 'redhatpam1!'"
    $jboss_home/bin/add-user.sh -a -r ApplicationRealm -u Tim -p redhatpam1! -ro manager,user --silent
    echo "\t'Tim' user created with 'manager,user' roles and password 'redhatpam1!'"
    $jboss_home/bin/add-user.sh -a -r ApplicationRealm -u Albert -p redhatpam1! -ro manager,user --silent
    echo "\t'Albert' user created with 'manager,user' roles and password 'redhatpam1!'"
    $jboss_home/bin/add-user.sh -a -r ApplicationRealm -u Mandy -p redhatpam1! -ro manager,user --silent
    echo "\t'Mandy' user created with 'manager,user' roles and password 'redhatpam1!'"
	echo
else
	echo Please inform a valid JBOSS_HOME directory!
	echo
	exit
fi
