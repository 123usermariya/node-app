# Node Base Image
FROM node:12.2.0-alpine

#Working Directry
WORKDIR /app

#Copy the Code
COPY package*.json ./

#Install the dependecies
RUN npm install

COPY . .
EXPOSE 8000

#Run the code
CMD ["node","app.js"]
