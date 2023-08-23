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
   
