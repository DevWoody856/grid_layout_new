This is the repository for [this blog post](https://rx-36.life/post/make-a-sidebar-menu-with-css-grid-layout/).  

[3.webm](https://user-images.githubusercontent.com/85185883/176752529-804e6d9f-0a3d-47b2-8b44-9e353acd87ae.webm)

https://user-images.githubusercontent.com/85185883/173353731-92c994d7-77c9-4356-89c8-6a58fb70876c.mp4


Sample code for a sidebar navigation built entirely with CSS gridlayout that can be used with Django's default template engine.
(This app does not use bootstrap or tailwind)

This application consists of the following.

## Backend:
- Django 4.05

## Database
- postgreSQL

## Frontend:
- Django's default template
- alpine.js
- jQuery
- Hammer.js --- for implementing the swipe function of mobile

I also built a development environment using **docker**.


## How to download this repo locally and running the application.  

Following description assumes the use of docker and windows11.  
And I use pycharm for my IDE.


1. Enter following command from the command line.
```
git clone https://github.com/DevWoody856/grid_layout_new
```

2. Enter following command in command line.
   (Go to projecto root)

```python
cd grid_layout_new
```

3. Create an `.env` file in the root of the project.

4. In the `.env` file you created, write the following.

```python
DEBUG_VALUE=TRUE
SECRET_KEY=*****************************************************

DB_NAME=postgres
DB_USER=postgres
DB_PASSWORD=postgres
DB_HOST=db_grid_220701
DB_PORT=5432

POSTGRES_DB=postgres
POSTGRES_USER=postgres
POSTGRES_PASSWORD=postgres
```
Regarding the SECRET_KEY, I recommend that you create a dummy key at a place like <a href="https://miniwebtool.com/django-secret-key-generator/" target="_blank">this site</a> and put it in the `.env` file.

As a reminder, `DB_HOST` is the service name of the database in `docker-compose.yaml`.  
In this docker configuration, `db_grid_220701`.  

5. From the project root, enter the following command.

```python
docker-compose up --build
```

6. If you success `docker-compose up -build`, you can see the message  
"starting development server at http://0.0.0.0:8000/".   
but actual application is accessed at `http://127.0.0.1:8000/`.   
Enjoy!