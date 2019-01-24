# NGINX with logrotate using docker-compose

Starts with default nginx container and adds in logrotate 

  The default settings are: 
  
  Logs are rotated daily    
  Files are compressed 

Settings should be able to be overwritten by mounting an updated config file to /etc/logrotate.d/nginx 
