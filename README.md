elvisproject
============

The elvisproject.ca Website

Current virtual server configuration for Nginx::
```
server {
    listen 80;
    server_name elvisproject.ca;

    # Index
    index index.html index.php;

    # Root location
    root /srv/webapps/elvisproject;

    # Logs
    access_log /var/log/nginx/access.log;
    error_log /var/log/nginx/error.log;

    # Rewrites
    rewrite ^/api$ /api/;
    rewrite ^/api/(.*)$ http://vis-framework.readthedocs.io;
    rewrite ^/ismir2014$ /ismir2014/;
    rewrite ^/ismir2014/(.*)$ /research/ismir2014/($1);
}
```
So that's that!
