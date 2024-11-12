# Step 1: Use an official Node.js image as the base image
FROM node:16

# Step 2: Set the working directory inside the container
WORKDIR /usr/src/app

# Step 3: Copy the package.json and package-lock.json first to install dependencies
COPY package*.json ./

# Step 4: Install dependencies defined in package.json
RUN npm install

# Step 5: Copy the rest of the application code
COPY . .

# Step 6: Expose the port that the application will run on
EXPOSE 3000

# Step 7: Define the command to run the app when the container starts
CMD ["node", "app.js"]
