# [Twitter](https://name_website.herokuapp.com/)

![ruby](https://img.shields.io/badge/Ruby-2.4.2-red.svg)
![rails](https://img.shields.io/badge/Rails-5.1.4-red.svg)
![rails](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg)
[ ![Codeship Status for week1-2/twitter_clone](https://app.codeship.com/projects/77375db0-890f-0135-1335-624b0d28980b/status?branch=master)](https://app.codeship.com/projects/248552)

# About


# Require
```
  * Docker
  * Docker Compose
```

# Getting Started

### 1. Do a fork at original repository
```
https://github.com/week1-2/twitter_clone
```

### 2. Clone your fork at a local repository

### 3. Start docker-compose
```
   $ docker-compose up --build      
```

### 4. Run all migrations
```
   $ docker-compose run --rm website rails db:create db:migrate      
```

### 5. How to execute other commands
```
$ docker-compose run --rm website commandName
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
$ docker-compose run --rm website bundle exec rspec
```

## How to contribute to the project

### 1. Add the remote repository source at your local repositoy
```
$ git remote add upstream git@github.com:https://github.com/week1-2/twitter_clone.git
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
