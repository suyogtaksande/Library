# Library API [![RSpecs](https://github.com/ajackus/pingmyteam/actions/workflows/rspec.yml/badge.svg)](#)

Run the following commands before starting the server

Getting started
---------------

1. Install all the gems
``` bundle install ```
2. Create Database and migrate
``` rails db:create ``` 
``` rails db:migrate ```
3. Populate table with data
``` rails db:seed ```

### To Setup Test Environment

1. Setup Test environment

  ```
  RAILS_ENV=test rails db:create
  RAILS_ENV=test rails db:migrate
  ```

2. Run rspec

  ``` bundle exec rake spec ```

3. Run Specific spec file
    Run the rspec command followed by the file path.

  ``` bundle exec rspec /path/to/file.rb ```

4. Run Specific spec from file
    Run the rspec command followed bye the file path with the line number.

  ``` bundle exec rspec /path/to/file.rb:1 ```

Api to consume

``` http://localhost:3000/api/libraries/:library_id/books ```

To Start rails console

``` rails c ```

To Start rails server

``` rails s ```
