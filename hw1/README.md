# README
*Assignment 3*:
    -Create a navigation bar using URL helpers
      -it can be as simple as a table at the top
    -authentication via devise gem

*Structure*:
Make -> Cars -> Factory -> Parts
(one)     (many)    (model)     (many)


    Commands Used For Structure:
    $rails new hw1
    $rails generate scaffold Part name:string
    $rails generate scaffold Make name:string country:string
    $rails generate scaffold Car name:string model:string vin:integer make:references
    $rails generate model Factory car:references part:references

    Commands Used Throughout:
    $bin/rails db:seed
    $rails db:migrate
    $rails test
    $rails server
    $rails destroy scaffold __name__

*ROR Info*
Rails version: 5.2.3
Ruby version:2.6.5-p114(.x86_64-darwin19)
RubyGems version: 3.0.3
Rack version: 2.0.7
JavaScript Runtime: JavaScriptCore
Environment: development
Database adapter: sqlite3
