#bring the base image
FROM node:24
#make a working directory to copy files
WORKDIR /app
#copy files
COPY . .
#install the required dependencies
RUN npm install
#Expose the port
EXPOSE 5173
#RUN the application
CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0", "--port", "5173"]


