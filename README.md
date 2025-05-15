# Project Setup Guide

Follow these steps to get the project up and running locally.

---

## Prerequisites

- Make sure you have **MySQL Workbench** installed.
- Ensure you have **Node.js** and **npm** installed.

---

## Steps to Run the Project

1. Clone the repository
   git clone https://github.com/khyatii01/Personal_Task_Mangament

2. Configure the Server Environment
Navigate to the server folder:  cd server
Open the .env file and update the database password to match your MySQL Workbench password:  DB_PASSWORD=your_mysql_password_here

3. Set Up the Database
Open MySQL Workbench and run the provided SQL query to create the database.

4. Start the Server
In the server directory, install dependencies and start the server:
npm install
nodemon index.js

5. Start the Client
Open a new terminal, navigate to the client folder:
cd ../client
npm install
npm run dev

Your project is now ready and running!

If you encounter any issues, please make sure:

Your MySQL server is running.

The credentials in .env are correct.

All dependencies are installed properly.


