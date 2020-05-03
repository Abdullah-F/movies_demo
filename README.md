# movies_demo
A demo using Rails6, React, Docker, Docker-compose, Rails_Admin, Nginx, Rspec, JWT, and more.

how to run the app:
===

1-`cd` to the backend directory and run `docker-compose up`
<br>
2-cd to the front end directory and run `docker-compose up`
<br>
  - the backend will be availbale at : `localhost:3000`.
  <br>
  - the fron end will be abvailable at: `localhost:3001`
  <br>
  - the admin panel will be availbale at: `localhost:3000/admin` (check the seed.rb to find the pre-created user and use it)
  <br>
  - the app is minimal
  <br>
 how to run the tests:
 ====
 for the backend:
   <br>
   1- type `docker exec -t movies_backend_app_1 /bin/bash
   <br>
   2- run `bundle exec rspec` all tests are written first following a TDD approach
 <br>
 for the fron-end:
   1-not tests are written.
   

Assumptions:
=====
1- I had only 12 hours to work on it since I was busy in the weekend, so I used jwt
      instead of facebook authentication in the front end, to avoid any delay.
<br>
2- not eveything is tested just a demonestration.
<br>
3- I assumed that the rating for movies will be from 1-10 and the censorship is a column in the movies table.
<br>
4- kept the coulmns minimals in the models
<br>
5- used validations in the model level hence did not sperate responsibilites and put them in a different validator objects.
<br>
6- did some in controller action data fetching. for simplicity did not use finders or move fetching data of index,
     action in the movies controller to an interactor or a seperate object.
<br>
7- in the movie industry the general name for actor/actress in a movie is a `performer` so 
         I used it for the model and the table name
<br>
8- did not dry the react app or cared about how to design it to keep things minimal, and just make it work only.
<br>
9- this is all what I can recall now. please feel free to ask me about any details or assumptions that I did not mention.
