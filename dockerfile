FROM ruby:2.4.2-slim
# Instala as nossas dependencias
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
# Seta nosso path
ENV INSTALL_PATH /app
# Cria nosso diretório
RUN mkdir $INSTALL_PATH
# Seta o nosso path como o diretório principal
WORKDIR $INSTALL_PATH
# Copia o nosso Gemfile para dentro do container
ADD Gemfile $INSTALL_PATH/Gemfile
ADD Gemfile.lock $INSTALL_PATH/Gemfile.lock
# Instala as Gems
RUN bundle install
# Copia nosso código para dentro do container
ADD . $INSTALL_PATH