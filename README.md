# IdeagenTest-2024-BE (Table CRUD + Filtering)

## Own reference (Bruce)

### Mysql Setup
```
1. Install jdbc mysql 
2. Download https://dev.mysql.com/downloads/mysql/ -> mysql_configurator.exedriver
3. Locate the `my.ini` in C:\ProgramData\MySQL\MySQL Server X.X -> add `binding-address = 127.0.0.1`
4. run to test connectivity -> mysql -u root -p
```

### NodeJS (Express)
```
1. mkdir backend -> cd backend -> npm init -y (initialise & create package.json)
2. npm install express
3. touch server.js (create a server.js config file)
4. node server.js
---- above is boiler plate ----
5. npm install cors
6. npm install mysql2
7. npm install -g pm2 | npm install --save-dev nodemon --> (-g for global, save for local)
8. pm2 start server.js --watch | npx nodemon server.js
```

## Project setup
```
npm install
```

### Compiles and hot-reloads for development
```
npm run serve
```

### Compiles and minifies for production
```
npm run build
```

### Lints and fixes files
```
npm run lint
```

### Customize configuration
See [Configuration Reference](https://cli.vuejs.org/config/).