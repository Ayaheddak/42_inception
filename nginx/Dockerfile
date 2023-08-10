# a base image (has a bunch of files were going to take those files and add additional files to it this is kind of like inheritance in prg )
FROM node:alpine
#copy all the files in the current directory into the app directory into that image
COPY . /app
#current working directory 
WORKDIR /app
# were going to use the command instruction to execute command
CMD node app.js
#Tell docker to package up our app === docker build