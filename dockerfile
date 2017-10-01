FROM ruby:2.4.2-slim
# Installs our dependencies
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
# Set our path
ENV INSTALL_PATH /usr/src/app
# Create our directory
RUN mkdir $INSTALL_PATH
# Set your path as the home directory
WORKDIR $INSTALL_PATH
# Copy our Gemfile into the container
ADD Gemfile $INSTALL_PATH/Gemfile
ADD Gemfile.lock $INSTALL_PATH/Gemfile.lock
# Install the Gems
RUN bundle install
# Copy our code into the container
ADD . $INSTALL_PATH
