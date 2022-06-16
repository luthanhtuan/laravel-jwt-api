# laravel-jwt-api

Laravel 8 with JWT Authentication and Swagger for API development

## Quick Start

- Clone this repo or download it's release archive and extract it somewhere
- You may delete .git folder if you get this code via git clone
- Run composer install
- Configure your .env file for authenticating via database
- Run docker-compose build
- Run docker-compose up -d
- Run the following command to populate database tables.

	```bash
	$ docker-compose exec --it php_laravel_jwt_api sh
    $ php artisan migrate
	```

- Visit `localhost`

> **Note:**
- You can now use:

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
