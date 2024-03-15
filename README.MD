Here is the Script where am deplyoing a website in HTTPD server with the help of script. 

I have included all the required packages that we gonna use in this journey, 
from unzip to httpd to weget all tha packages have been installed. 

Whole code has been documented with the help of Comments. 

As we can there after you can see We have started HTTPD server. 

after that we have created a empty directory in TEMP Folder. 

We also downloaded a portfolio website. And it have been downloaded in zip file. 
We then Unziped that file and copied it and paste it in var/www/html file. 

/var/www/html is a common directory path on Linux systems, typically used to store files that are served by a web server. In the context of a web server like Apache HTTP Server, this directory is the default root directory for serving web pages. When you place files in this directory, they can be accessed by clients (such as web browsers) over the internet.


And then we restarted HTTPD service. 
and Removed Temp files. from /tmp/webfiles which we created earlier. 

This is what happened in this script.sh codebase. 