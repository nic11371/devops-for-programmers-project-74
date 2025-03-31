<div align="center">
  <h1>Justify blog</h1>
</div>
___

## Requirements
___

* NodeJs v20
* Sqlite or PostrgeSQL

## Commands
___

```
make setup
make dev
make test
```

## Run tests with Postgres
___

To run tests with Postgres, you need to edit ***config/config.cjs*** and under the `test` key comment out the use of SQLite and uncomment the environment variables

```
  // test: {
  //   dialect: 'sqlite',
  //   storage: './database.test.sqlite',
  // },
  test: {
    dialect: 'postgres',
    database: process.env.DATABASE_NAME,
    username: process.env.DATABASE_USERNAME,
    password: process.env.DATABASE_PASSWORD,
    port: process.env.DATABASE_PORT,
    host: process.env.DATABASE_HOST,
  },
```

In it specify the data to connect to the database

```
DATABASE_NAME=postgres
DATABASE_USERNAME=postgres
DATABASE_PASSWORD=postgres
DATABASE_PORT=5432
DATABASE_HOST=localhost
```

## Running an application with Postgres (production)
___

Export environment variables to work with the database or prepare a .env file with variables

Run

```
make ci-build
make push
make start
```


### Hexlet tests and linter status:
[![push](https://github.com/nic11371/devops-for-programmers-project-74/actions/workflows/push.yml/badge.svg)](https://github.com/nic11371/devops-for-programmers-project-74/actions/workflows/push.yml)
[![Actions Status](https://github.com/nic11371/devops-for-programmers-project-74/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/nic11371/devops-for-programmers-project-74/actions)
