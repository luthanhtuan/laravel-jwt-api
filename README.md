# Documentation
## About

Laravel 8 with JWT Authentication and Swagger for API development

## Requirements
* PHP >= 7.4
* [Composer](https://github.com/composer/composer) 2.0.8
* [Laravel](https://github.com/laravel/framework) ^8.0
* [jwt-auth](https://github.com/tymondesigns/jwt-auth) ^1.0.2
* [Swagger](https://github.com/DarkaOnLine/L5-Swagger) 8.3.2
## Installation

- Clone this repo or download it's release archive and extract it somewhere
- Open cmd or terminal cd laravel-jwt-api and run below:

    ```bash
    $ docker-compose build
    $ docker-compose up -d
    ```
- cd src and configure your .env file for authenticating via database

    ```bash
    $ composer update
    $ php artisan vendor:publish --provider="Tymon\JWTAuth\Providers\LaravelServiceProvider"
    $ php artisan jwt:secret
    $ php artisan vendor:publish --provider "L5Swagger\L5SwaggerServiceProvider"
    $ php artisan l5-swagger:generate
    ```
- cd ../ run the following command to populate database tables.

	```bash
    $ docker exec --it php_laravel_jwt_api sh
    $ php artisan migrate
	```

- Visit `localhost`

> **Note:**
- You can now use ```Postman```:

- ```POST /api/register``` –> Create user 

    ```json
    {
    	"message": "User successfully registered",
        "user": {
            "name": "Lu Thanh Tuan",
            "email": "tuanlu@tlcmodular.com",
            "updated_at": "2022-06-16T08:09:36.000000Z",
            "created_at": "2022-06-16T08:09:36.000000Z",
            "id": 2
        }
    }

    ```
     
     
- ```POST /api/login``` –> with email and password, obtain a JWT token

      

- ```GET /api/user``` –> Get user info



And remember, JWT requires you to provide the token as a header.
