FROM ruby:2.3-slim

# Dependencias
RUN apt-get update && apt-get install -qq -y --no-install-recommends \
      build-essential nodejs libpq-dev

# Path
ENV INSTALL_PATH /usr/src/app

# Cria nosso diretório
RUN mkdir -p $INSTALL_PATH

# Seta o nosso path como o diretório principal
WORKDIR $INSTALL_PATH

# Copia o nosso Gemfile para dentro do container
COPY Gemfile ./

# Instala as Gems
RUN bundle install

# Copia nosso código para dentro do container
COPY . .

# Roda nosso servidor
CMD ["rails", "server", "-b", "0.0.0.0"]
