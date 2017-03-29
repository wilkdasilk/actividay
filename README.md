# README

This README would normally document whatever steps are necessary to get the
application up and running.



## System dependencies
- Image uploads require ImageMagick to be installed: http://www.imagemagick.org/script/index.php

## Database creation
- In terminal, navigate to the directory where you downloaded this app, and create a database for it: `rails db:create`
- Next, lets set up the database with our models. Run: `rails db:migrate`

## Database initialization
- Add in some seeded data. This will give the app some activities to get started. Additionally, running the seed command will destroy any existing data in the database. THIS IS PERMANENT. YOU CANNOT UNDO THIS. Run `rails db:seed`
- Your database is up and ready for testing. Have fun!

## Configuration
- The carrierWave gem requires the rmagick gem, which is not compatible with the latest version of ImageMagick. As of the writing of this README, to require the correct version of ImageMagick you can use this command:
`brew install imagemagick@6 --force && brew link imagemagick@6 --force`
This will force the installation of a specific version for this.
- If you have additional constraints, this is a good resource for ImageMagick/carrierWave issues:
http://stackoverflow.com/questions/9050419/cant-install-rmagick-2-13-1-cant-find-magickwand-h

## Deployment of a local server
- In the app directory, you'll need to install the required gems, run `bundle install` in terminal.
- Spin up a local puma server, use `rails server`. This is set up on localhost:3000.

## How to run the test suite
Im trying to figure that out myself.

### Ruby version
- ruby "2.3.3"

### Gems
- gem 'rails', '~> 5.0.2'
- gem 'pg', '~> 0.18'
- gem 'puma', '~> 3.0'
- gem 'sass-rails', '~> 5.0'
- gem 'uglifier', '>= 1.3.0'
- gem 'coffee-rails', '~> 4.2'
- gem 'jquery-rails'
- gem 'turbolinks', '~> 5'
- gem 'bootstrap-sass'
- gem 'jquery-turbolinks'
- gem 'jbuilder', '~> 2.5'
- gem 'bcrypt', '~> 3.1.7'
- gem 'devise'
- gem 'carrierwave', '~> 1.0'
- gem 'rmagick'
- gem 'zip-codes'
- gem "will_paginate", '~> 3.1.0'
- gem 'friendly_id', '~> 5.2'
- gem 'sendgrid-ruby'
- gem 'rails_12factor'
- gem 'byebug', platform: :mri
- gem 'web-console', '>= 3.3.0'
- gem 'listen', '~> 3.0.5'
- gem 'spring'
- gem 'spring-watcher-listen', '~> 2.0.0'
- gem 'tzinfo-data
