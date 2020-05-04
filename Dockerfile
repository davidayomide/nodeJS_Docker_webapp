# Specify a base image (#Taking base image from "node:alpine" from dockerhub)
FROM node:alpine 

#Working directory set as /usr/app, Any custome file copy to inside this folder
WORKDIR /usr/app  

# Install some depenendencies

#While rebuilding docker only consideer pakage.json for installing depenendencies
COPY ./package.json ./       

RUN npm install

#copying rest of the file to inside the container
COPY ./ ./                  

# Default command
CMD ["npm", "start"]     #start npm
