FROM nginx
# The FROM instruction sets the base image. In this case, the base image we are using is nginx. Docker will pull this from our local repository, or if it doesn't exist there, it will look for it in Docker Hub. 
COPY . /usr/share/nginx/html
# The COPY instruction here takes two arguments - the source from which to copy, then the destination. Here, the first argument is a period . that refers to the current folder of the Dockerfile in the host machine, which is the using_nginx folder.

# To build a new image from this Dockerfile, tagging it with the name hellow_nginx, in a terminal from the using_nginx folder, enter:
# docker build -t hello_nginx .

# Then, to run a container instance from this new image you would enter:
# docker run --rm --name my_nginx -d -p 8080:80 hello_nginx

# The website should now work in the browser at:
#  http://localhost:8080/hello.html

# If you update the hello.html file it will not reflect changes as the static file is being read from within the Docker container, not from the host machine's filesystem.