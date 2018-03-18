FROM ruby:2.4.1
MAINTAINER Catalin Ilinca <c@talin.ro>

ENV TERM xterm

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -y update --fix-missing

RUN apt-get install -y --no-install-recommends \
    git \
    less \
    curl \
    zsh \
    vim \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get autoremove -y

RUN chsh -s /bin/zsh
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" || true
RUN sed -i -e 's/# DISABLE_AUTO_TITLE="true"/DISABLE_AUTO_TITLE="true"/g' ~/.zshrc

RUN touch ~/.vimrc
RUN echo 'set paste' >> ~/.vimrc \
    && echo 'set number' >> ~/.vimrc \
    && echo 'syntax enable' >> ~/.vimrc \
    && echo 'set tabstop=2' >> ~/.vimrc \
    && echo 'set shiftwidth=2' >> ~/.vimrc \
    && echo 'set softtabstop=2' >> ~/.vimrc \
    && echo 'set expandtab' >> ~/.vimrc

COPY Gemfile* /tmp/
WORKDIR /tmp
#  Be sure we run the latest Bundler
RUN gem install bundler
RUN bundle install

ADD . /var/app

WORKDIR /var/app
