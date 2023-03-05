# how to serve static content from nginx?

TLDR; 
hosting **dist** content with nginx configuration in **config/default.conf** using **Dockerfile**.  
**run.sh** will build and run the image.


## concepts can be seen
1. hosting file location from nginx
2. multiple localtion directives
3. auto indexing at images
4. try_files directive
5. error_pages drective
6. proxy_pass: sending request to BE https server and intercepting its response http status 
7. http to https server proxy config

## directory str explaination
1. **config**: has nginx configuration files, currently default.conf
2. **dist**: html application with resources, which will be served
3. **Dockerfile**: create image on top of nginx latest, copy config and dist and publish port 80
4. **run.sh**: script to build image and run




