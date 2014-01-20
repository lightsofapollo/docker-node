from ubuntu
maintainer James Lal [:lightsofapollo]

cmd ["mkdir", "/opt/"]
add node /opt/node
env PATH /opt/node/bin:$PATH
