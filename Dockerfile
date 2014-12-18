from ubuntu
maintainer James Lal [:lightsofapollo]
add http://nodejs.org/dist/v0.11.14/node-v0.11.14-linux-x64.tar.gz /tmp/node/
run tar -C /tmp/node -zxvf /tmp/node/node* && rm /tmp/node/*.tar.gz
run cp -R -n /tmp/node/*/* /usr/local
run rm -Rf /tmp/node.tar.gz
run node -v
