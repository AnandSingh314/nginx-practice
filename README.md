# nginx-practice
documentation, poc, testbeds, how-tos, etc

## quick key concepts 
1. nginx can serve static content, do load balancing, reverse-proxy, content cache, rate limiter etc
2. default.conf is used to configure
3. context and directives, 2 key concept to manage entire nginx configuration.
4. Core contexts are: Main, Event, Http, Server, Location
5. Other contexts used are: upstream, if



## references
1. nginx docs: https://docs.nginx.com/nginx/admin-guide/ 
2. detail blog on context: https://www.digitalocean.com/community/tutorials/understanding-the-nginx-configuration-file-structure-and-configuration-contexts