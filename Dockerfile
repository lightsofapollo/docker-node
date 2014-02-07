from ubuntu
maintainer James Lal [:lightsofapollo]
add http://nodejs.org/dist/v0.10.25/node-v0.10.25-linux-x64.tar.gz /tmp/node/
run cp -R -n /tmp/node/*/*/* /usr/local
run rm -Rf /tmp/node.tar.gz
run node -v
