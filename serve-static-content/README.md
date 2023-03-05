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

## how to use this project 
1. build and run using `./run.sh` 
2. goto `http://localhost` will show index.html
3. goto `http://localhost/about` will show about.html          
4. goto `http://localhost/404` will show errors/404.html, static redirection of error_pages 
5. goto `http://localhost/500` will show errors/50x.html, static redirection of error_pages
6. dynamic redirection using `https://mock.codes/`,   
    a. `http://localhost/mock/501`, `http://localhost/mock/502`, `http://localhost/mock/503`, `http://localhost/mock/504` redirect to 50x.html  
    b. `http://localhost/mock/401`, `http://localhost/mock/402`, `http://localhost/mock/403`, `http://localhost/mock/404` redirect to 404.html


## References

1. https://docs.nginx.com/nginx/admin-guide/web-server/serving-static-content/ 
2. http://nginx.org/en/docs/http/ngx_http_core_module.html


