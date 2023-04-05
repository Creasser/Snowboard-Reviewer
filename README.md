# Snowboard Reviewer

Snowboard Reviewer is a full stack application that utilizes a React.js frontend and a ruby backend. This application allows the user to add their own snowboard to the database. Once the board is adding to the database the user then can also leave a review on the board.

## Technologies Used

* Ruby
  * ActiveRecord
  * Sinatra
* React.js
  * React Router

## Installation

* To begin using this application, you first need to fork and clone both this repo and the frontend repo which can be found [here](https://github.com/Creasser/Snowboard-Reviewer-Frontend)
* Once both repositorys are locally installed and opened on your machine, run ``` bundle install ``` in the backend repo ternmial to install all the backend dependencies for the application. Do the same for the frontend repo, but run ``` npm install ``` instead to download all the frontend dependencies.
* After the dependencies are installed, seed the database by running ``` bundle exec rake db:seed ``` in the backend terminal.
* Then start the server by running ``` bundle exec rake server ```.
* Start the application by running ``` npm start ``` in the frontend repo terminal. After this you are all set to start using the application!

## User Interactions

* The user will be able to add snowboards to the database through a controlled form
  * When adding the user will input the brand, price, image, directional status, and preferred riding conditiion
    * This will be sent to backend via POST request
* The user is be able to make a review for newly added boards and pre-existing boards through a controlled form
  * This will be sent to the backend via POST request
* The user can edit the boards that are currently in the database AND the reviews
  * These edits are then sent back to the database via PATCH request

## Project Requirements
* This project:
  * Uses ActiveRecord to interact with a SQLite database
  * Uses a database with a one-to-many relationship
  * Allows all snowboard and reviews to have full CRUD abilities
  * Only relys on one initial GET request to get the data from the database
  * Follows RESTful conventions