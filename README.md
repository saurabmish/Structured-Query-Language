# Query Playground

DDL and DML queries in PostgreSQL


### PostgreSQL Setup

  + Install PostgreSQL

    `brew install postgresql`

  + Install OpenJDK for DBeaver:

    `brew cask install adoptopenjdk`

  + Install GUI client **DBeaver**:

    `brew cask install dbeaver-community`


### PostgreSQL Configuration

  + Check if postgres service is running:

    `pg_ctl -D /usr/local/var/postgres status`

  + Manually start / stop services:

    `pg_ctl -D /usr/local/var/postgres start` `( / stop)`

  + **NOTE**:
  Postgres can also be started automatically:

    `brew services start postgresql`

  + Check the `listen_addresses` and `port` in `postgresql.conf`:

    `egrep 'listen|port' /usr/local/var/postgres/postgresql.conf`

  + Create role postgres:

    `/usr/local/opt/postgres/bin/createuser -s postgres`


### Environment Setup

  + Login to psql as root user:

    `psql -U postgres` **OR**

    `psql -U postgres -h localhost`

  + Create user:

    `CREATE USER testdbuser WITH PASSWORD 'testdbpass';`

  + Create database:

    `CREATE DATABASE testdb;`

  + Grant access on database to user:

    `GRANT ALL PRIVILEGES ON DATABASE testdb TO testdbuser;`

  + Exit psql:

    `\q`

  + Execute scripts in PostgreSQL:

    `psql DB_USER -h localhost -d DATABASE -f file.sql -a`


### DBeaver (GUI Client) Configuration:

   1. Open DBeaver

   2. Click on "Database" in the menubar

   3. Select option "New Database Connection"

   4. Select "PostgreSQL"

   5. Download required drivers

   6. Enter the values of "Host", "Database", "User", "Password"

   7. Click on "Test Connection ..."

   8. Click Finish


### Environment Commands:

  In addition to the **Environment Setup** section above, the below commands are used very frequently:

  + View postgres users:

    `\du`

  + View connection information:

    `\conninfo`

  + List databases:

    `\l`

  + Connect to database:

    `\c database_name`

  + View all tables:

    `\dt`

  + View table details:

    `\d table_name`

  + Get command history:

    `\s`

  + Redirect output of command history to a file:

    `\d file_name`

  + Edit (or write) command in your preferred editor: (**NOTE**: Ensure that the `$EDITOR` variable defined for the shell)

    `\e`

  + Help:

    `\?`

    OR

    `\h SQL_COMMAND`
