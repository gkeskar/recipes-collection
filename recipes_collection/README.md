# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Rails version
  5.1.7

* Ruby version
  2.4

* System dependencies

* Configuration

* Docker

  cp config/database.yml.docker config/database.yml
  docker-compose build

  One time
  docker-compose run web bash
  rake db:create db:migrate db:seed
  exit

  And then, each time
  docker-compose run web

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
