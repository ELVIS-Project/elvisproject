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
        RewriteRule ^/api/(.*)$ http://vis-framework.readthedocs.org/$1 [R=301,L]

        DocumentRoot /var/www/html/elvisproject
    </VirtualHost>

So that's that!
