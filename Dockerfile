# Use an official Jekyll runtime as a parent image
FROM jekyll/builder:latest

# Set the working directory to /srv/jekyll
WORKDIR /srv/jekyll

# Copy the current directory contents into the container at /srv/jekyll
COPY . /srv/jekyll

# Run Jekyll to build the site
RUN chmod -R 777 /srv/jekyll && jekyll build --future
