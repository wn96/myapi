# A simple Rails API App
[![CircleCI](https://circleci.com/gh/wn96/myapi/tree/master.svg?style=shield)](https://circleci.com/gh/wn96/myapi/tree/master)

## Installation

```
# Clone the repo
git clone git@github.com:wn96/myapi.git
# cd into folder
cd myapi
# Install gem files
bundle install
```

Clone the repo, and create a new psql database*. Default database name required is myapi, which can be created using the command.
```
rails db:create
```

Edit name of database in config/database.yml.

```
# Start server
rails server
```

*See below on how to install psql

## Use it as an API

**endpoint:** `http://localhost:3000<format>`

| Resources    | Request  | Description     | Format
| ------------ | -------- |---------------- | ------
| Index        | GET      | Show all posts  | `/api/v1`
| Show         | GET      | Show a post     | /api/v1/:post_id
| Create       | POST     | Create a post   | /api/v1/:post_id
| Update       | PUT      | Update a post   | /api/v1/:post_id
| Destroy      | DESTROY  | Destroy a post  | /api/v1/:post_id

Note that Post only takes in `title:string` and `body:text`.



## Creating new endpoints

```
# Create a new model rails generate model <model_name> <...datas>
rails generate model Person student_id:string age:integer date_of_birth:date freshman:boolean
# Add routes in config/routes.rb (URL depends on this)
# Add CRUD (show/index/create/destroy/update) methods in controller.
# restart server
```

## Install Postgresql

```
# To check if psql is installed:
which psql

# To install:
#MacOS:
brew install psql
# Linux:
apt-get install psql
```



