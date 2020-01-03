# Chapter-3 Sample app

> Sample app from the third chapter of the rails tutorial.


Static pages with some dynamic elements.

## Built With

- Ruby,
- Ruby on Rails,

## Live Demo

> This will be updated once the project is on heroku.

[Live Demo Link](https://ancient-springs-06062.herokuapp.com)


## Getting Started

**This is an example of how you may give instructions on setting up your project locally.**
**Modify this file to match your project, remove sections that don't apply. For example: delete the testing section if the currect project doesn't require testing.**


To get a local copy up and running follow these simple example steps.

### Prerequisites

- You need to have Ruby 2.6.0 and Rails 6.0.2 installed on your local machine.
- In the development mode you need to have sqllite3 installed. Postgresql for production.
- Install Heroku toolbelt for deployment to heroku.
- You also need to have git installed.

### Setup

- Run `$ git clone https://github.com/rsundar/sample-app.git` in order to clone the repo on your local machine.

### Install

- Run `$ bundle install --without production` to install all of the gems required for this project.

### Usage

- Run `$ rails server -b 0.0.0.0` to run the application and go to http://localhost:3000 in your favorite browser to view the running app.

### Run tests

- Run `$ rails test` to run all the tests for the application.

### Deployment

- Deploy on heroku with the ruby pack. Run `$ heroku buildpacks:add heroku/ruby`,
- Add a postgresql pack to your heroku deployment with `$ heroku addons:create postgresql:hobby-dev`,
- Run `$ heroku run rails db:migrate`.

#### Issues with Deployment

- You may have problems with webpacker, it would be far better to run `$ rails assets:precompile` locally before pushing to heroku.


## Authors

👤 **Rohan Sundar**

- Github: [@rsundar](https://github.com/rsundar)


## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- DHH for gifting the world Ruby on Rails,
- Michael Hartl for his excellent tutorial on the same,

## 📝 License

This project is [MIT](lic.url) licensed.
