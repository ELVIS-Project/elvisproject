elvisproject
============

The elvisproject.ca Website

This is how the server configuration file looks (it's `/etc/httpd/conf.d/elvisproject.conf`)::

    <VirtualHost _default_:80>
        ServerName elvisproject.ca

        <Directory /var/www/html/elvisproject>
                Require all granted
        </Directory>

        RewriteEngine On
        RewriteRule ^/api$ /api/
        RewriteRule ^/api/(.*)$ http://vis-framework.readthedocs.org/en/ [R=301,L]

        RewriteRule ^/ismir2014$ /ismir2014/
        RewriteRule ^/ismir2014/(.*)$ /research/ismir2014/($1)

        DocumentRoot /var/www/html/elvisproject
    </VirtualHost>

So that's that!
