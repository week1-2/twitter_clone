# [Twitter](https://name_website.herokuapp.com/)
===================

![ruby](https://img.shields.io/badge/Ruby-2.4.2-red.svg)
![rails](https://img.shields.io/badge/Rails-5.1.4-red.svg)
![rails](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg)
![Codeship Status for FabianoVilela/twitter-clone-week1-team2](https://app.codeship.com/projects/c9114aa0-88ba-0135-05c2-524439faa213/status?branch=master)


# About


# Require
```
  * Docker
  * Docker Compose
```

# Getting Started

### 1. Do a fork at original repository
```
https://github.com/FabianoVilela/twitter-clone-week1-team2
```

### 2. Clone your fork at a local repository

### 3. Start docker-compose
```
   $ docker-compose up --build      
```

### 4. Run all migrations
```
   $ docker-compose exec website rails db:create db:migrate      
```

### 5. How to execute other commands
```
$ docker-compose exec website commandName
```

### 6. Install new gems
```
$ docker-compose build
```

### 7. Start APP
```
$ docker-compose up
```

### 8. Test App
```
$ docker-compose exec website bundle exec rspec
```

## How to contribute to the project

### 1. Add the remote repository source at your local repositoy
```
$ git remote add upstream git@github.com:FabianoVilela/twitter-clone-week1-team2.git
```

### 2. Sync your repository with the original repository
```
$ git fetch upstream
```

### 3. Update your local repository
```
$ git checkout master
$ git merge upstream/master
```

### 4. Work on it and send your changes
```
$ git push origin master
```

### 5. Do a pull request at your fork on GitHub
