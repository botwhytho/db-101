This repo can assist you in learning some basic SQL principles.

SQL UI web front-end and data visualization package provided by [Metabase](http://www.metabase.com/).
SQL data back-end provided by [PostreSQL](https://postgresql.org)

#### SQL Syntax Cheat Sheet

http://www.cheat-sheets.org/sites/sql.su/

#### Database Normalization

https://www.thoughtco.com/database-normalization-basics-1019735

#### Data Exploration & Visualization

If you would like to test your own queries dynamically and very quickly visualize your data, please download [docker](https://store.docker.com/search?type=edition&offering=community) and clone this repo.

* If you want to use your own SQL database, you can provide a postgreSQL compatible .sql dump file.
* You need to change the value of the POSTGRES_DB environmental variable in the 'docker-compose.yml' file from INPUT_DATABASE_NAME to the name you want.
* You need to place the sql dump file in the sql-data-dump folder
* If you don't provide your own data, Metabase comes with some sample data with which you can practice SQL concepts as well.

#### Starting Up the Environment

From the repository directory:
* In the command line run 'docker-compose up'
* Docker will download both environments and set them up. Wait a while. Once the command line displays the message 'Metabase Initialization COMPLETE' you should be able to connect at localhost:3000

#### Setting Up Metabase

* Fill in your personal information
* If you want to use your own data (if not skip step at bottom)
  * Choose PostreSQL as database
  * The name is whatever you want to call it
  * The 'Host' should be 'db'
  * The 'Port' is the default PostgreSQL port: 5432
  * The 'Database name' NEEDS to be whatever value you put in the POSTGRES_DB variable in the docker-compose.yml file.
  * The 'Database username' NEEDS to be 'postgres'
  * The 'Database password' is left blank. The two docker containers can only talk to each other so this is not a security concern.

* After you complete the set-up, Metabase has a great guided tour that should only take a couple of minutes but explains the UI really well. Highly recommend to follow it.
* Have fun exploring and visualizing data.

![postgres-details](screenshots/postgres-details.png?raw=true)

#### Stopping the Environment

From the repository directory
* In the command line run 'docker-compose up'

#### Re-starting the Environment

From the repository directory
* In the command line run 'docker-compose start'
