# This pulls this version of apache to be used 
FROM httpd:2.4.49
# This exploit requires certain things to changed in the conf file for apache specifically in the new conf file line 251
COPY ./httpd.conf /usr/local/apache2/conf/httpd.conf
# This is simply the html page being served on the web server
COPY index.html /usr/local/apache2/htdocs
# this just make sport 80 visiable outside the docker
EXPOSE 80