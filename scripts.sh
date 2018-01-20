#who owns apache
ps aux | grep -v root | grep apache | cut -d\  -f1 | sort | uniq

#######################
#funky grav script save as .sh

#!/bin/sh
HTTPDUSER=`ps aux | grep -E '[a]pache|[h]ttpd|[_]www|[w]ww-data|[n]ginx' | grep -v root | head -1 | cut -d\  -f1`
HTTPDUSERGROUP=`id $HTTPDUSER -gn`

#pick between these two
chgrp -R daemon:daemon .
chown -R $HTTPDUSER:$HTTPDUSERGROUP .

find . -type f | xargs chmod 664
find ./bin -type f | xargs chmod 775
find . -type d | xargs chmod 775
find . -type d | xargs chmod +s
########################


#file copy
scp yourusername@yourserver:/home/yourusername/examplefile
scp bitnami@il4e.com:~/apps/tsugi 

#bitnami restart apache
sudo /opt/bitnami/ctlscript.sh restart apache

#move all files up one folder
mv  -v /PATH/* /PATH/


#To remove the folder with all its contents(including all interior folders):
rm -rf /path/to/directory
#To remove all the contents of the folder(including all interior folders) but not the folder itself:
rm -rf /path/to/directory/*

##############

Install rsub:

#On server
wget -O /usr/local/bin/rsub \https://raw.github.com/aurora/rmate/master/rmate
chmod a+x /usr/local/bin/rsub

#On local
#Install rsub Sublime3 package:
#On Sublime Text 3, open Package Manager (Ctrl-Shift-P on Linux/Win, Cmd-Shift-P on Mac, Install Package), and search for rsub and install it

#Open command line and connect to remote server:
ssh -R 52698:localhost:52698 server_user@server_address
ssh -R 52698:localhost:52698 bitnami@il4e.com

#after connect to server run this command on server:
rsub path_to_file/file.txt

###############
drwsrwsr-x 15 bitnami daemon 4096 Nov 27 04:13 htdocs
drwxr-xr-x 2 root    root   4096 Nov 28 19:06 htdocs

sudo wget "https://getgrav.org/download/core/grav-admin/latest"

