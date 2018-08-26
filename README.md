# A simple Rails API App
[![CircleCI](https://circleci.com/gh/wn96/myapi/tree/master.svg?style=svg)](https://circleci.com/gh/wn96/myapi/tree/master)

## Installation
Clone the repo, and create a new psql database. Default database name required is myapi, which can be created using the command
```
# Start psql
psql
# Create new database called myapi
CREATE DATABASE myapi;
# Quit psql
\q
```

## Use it as an API

**endpoint:** `http://localhost:3000<format>`

| Resources    | Request  | Description     | Format
| ------------ | -------- |---------------- | ------
| Index        | GET      | Show all posts  | `/api/v1`
| Show         | GET      | Show a post     | /api/v1/:post_id
| Create       | POST     | Create a post   | /api/v1/:post_id
| Update       | PUT      | Update a post   | /api/v1/:post_id
| Destroy      | DESTROY  | Destroy a post  | /api/v1/:post_id

