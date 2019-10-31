# README
*Assignment 1:
    -Create scaffolds for makes, cars, parts
    -One to many relationship for make to cars
    -Many to many relationshiop for cars to parts
    -Create model Factory for many to many relationship 
    
*Structure:
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
    
* ROR Info
Rails version: 5.2.3
Ruby version: 2.3.7-p456 (universal.x86_64-darwin18)
RubyGems version: 2.5.2.3
Rack version: 2.0.7
JavaScript Runtime: JavaScriptCore
Database adapter: sqlite3
