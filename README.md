# README

Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.
Prerequisites

You'll need:

a computer

Built With

    Rvm - Version 1.29.7
    Ruby - Version 2.5.1p57
    Rails - Version 4.2.10
    Bundler - Version 1.16.1
    Gem - Version 3.0.1


License

This project is licensed under the MIT License
Acknowledgments

    Hat tip to anyone whose code was used
    Inspiration

Installing

A step by step series of examples that tell you how to get a development up and running

Cloning git repo:

git clone https://github.com/IlonaKolo/martin-events-client

Opening repo folder:

cd martin-events-client

Run command:

bundle install

Migrate database(s):

rake db:migrate

Import seed data:

rake db:seed

Run command:

bundle install

Create secret.env into root folder and include:

export SENDGRID_API_KEY='YOUR KEY'
export RECAPTCHA_SITE_KEY='YOUR KEY'
export RECAPTCHA_SECRET_KEY='YOUR KEY'

How to get your Sendgrid API key:

Go to https://sendgrid.com sign up or log in and create a new API key

How to get your Recaptcha API key:

Go to https://www.google.com/recaptcha/admin and generate new keys. 
Note: use localhost or 127.0.0.1 in domain if using localhost:3000

Replace YOUR KEY with the generated API keys in secret.env

Run command:

source secret.env

Start rails server by running:

rails s

Open your file on localhost;