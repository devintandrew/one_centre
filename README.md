# README

Hi This application is a basic rails app, I have used materialized css framework. All depencies should be in the Gemfile.

Rails version 5.1.7
Ruby version 2.6.6

* Database creation
  Create postgres instance with:

    database name: one_centre_db
    username: one_centre 
    password: password1

* Database initialization
  rails db:migrate
  rails db:seed

To Install

1. Setp Ruby and Rails Environment.
2. execute -> bundle install
3. execute -> rails db:migrate
4. execute -> rails db:seed

To start application execute -> rails s


What is the Application About:

The app provides a listing of review, notes concerning Blog Postings, Movies and Recipes
The home page has the main listing of all review entries.
Its a simple interface you can delete entries from the main listing page.
Also by clicking on the title you can view the details about the an individual listing and edit.
At the top of the page in the navbar you are able to create new content and also filter or search by contact type.

Technical overview and justification of the architectural design decisions

I originally started with creating an api backend and react frontend. There was a few problems with libraries and rails 6. I then decided to use a simple approach and use Ruby on Rails for frontend and backend.

I decided to use a single database table to hold all the information as this was less complex than having multiple tables and decided on materialize css for the look and feel. 

With having a few problems with rails 6 I decided to use rails 5.1.7 as I was more familar with the javascript requirements, especially when using jquery. Rails 6 is moving away from the use of jquery.

Areas of improvements:

I think there is a lot of improvement to be done using a react or other SPA either seperate to rails or integrated. 
A mongoDB database might be better to store documents and better fort faster retrieval especially if the application had to scale.

I would add in User administration control and possibly add customer logins so that they may add there own blogs. 







