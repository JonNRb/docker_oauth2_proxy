# Use with the jwilder/nginx-proxy container

You can use the oauth2\_proxy with jwilder's nginx-proxy container to
add blanket authentication to proxied webapps.

When nginx-proxy adds a VIRTUAL\_HOST, it checks /etc/nginx/vhost.d for
a file named after the VIRTUAL\_HOST and for a file ending in
\_location.

Edit the names of these files to match your VIRTUAL\_HOST's name and
also edit them replacing oauth2\_proxy with your oauth2\_proxy
container's name.
