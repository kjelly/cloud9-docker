#/bin/sh
echo username: $USER
echo password: $PASSWD
/usr/bin/node /c9sdk/server.js --listen  0.0.0.0  -p  7777  -a  $USER:$PASSWD -w  /workspace
