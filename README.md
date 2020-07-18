<!-- place the license badge here and the build passing badge too -->
![release badge](https://img.shields.io/github/v/release/santiago-rodrig/chat_app)
![website state badge](https://img.shields.io/website?down_color=lightgrey&down_message=offline&up_color=green&up_message=online&url=https%3A%2F%2Fsrodrig-chat-app.herokuapp.com)
![license badge](https://img.shields.io/github/license/santiago-rodrig/chat_app)
![followers](https://img.shields.io/github/followers/santiago-rodrig?style=social)
![stars](https://img.shields.io/github/stars/santiago-rodrig/chat_app?style=social)

# Chat App

[live version](https://srodrig-chat-app.herokuapp.com)

![app gif demo](./doc/demo.gif)

This project is a real-time chat using Ruby on Rails. The feature of the
framework that shines in the project is `ActionCable`. Here is a summary,
you have users and messages, in the chat room users type their messages
and the messages get broadcast to all the users currently connected to the
application (they get connected using WebSocket), pretty neat indeed!

## Table of contents

- [Requirements](https://github.com/santiago-rodrig/chat_app#requirements)
- [Setup](https://github.com/santiago-rodrig/chat_app#setup)
- [Collaboration](https://github.com/santiago-rodrig/chat_app#collaboration)
- [License](https://github.com/santiago-rodrig/chat_app#license)
- [Contact](https://github.com/santiago-rodrig/chat_app#contact)

## Requirements

- [Ruby](https://www.ruby-lang.org/en/) (~> 2.5)
- [Ruby on Rails](https://rubyonrails.org/) (~> 5.1.6)
- [Bundler](https://bundler.io/v2.0/#getting-started) (~> 2.1.4)

## Setup

First, you need to clone the repository.

```sh
git clone https://github.com/santiago-rodrig/chat_app.git && \
cd chat_app
```

Once you have the repository locally, install the dependencies.

```sh
bundle config set without 'production' && \
bundle install
```

As a final step, run the [migrations](https://guides.rubyonrails.org/active_record_migrations.html#migration-overview).

```sh
rails db:migrate
```

Optionally, you can populate the database with dummy data.

```sh
rails db:seed
```

Now you are ready to fire up the local web server.

```sh
rails server
```

Next, you'll want to visit [localhost at port 3000](http://localhost:3000).

## Collaboration

To collaborate to this project first fork the repository, after that, create a new branch based
on [develop](https://github.com/santiago-rodrig/chat_app/tree/develop)
(using [Git-flow](https://nvie.com/posts/a-successful-git-branching-model/)
is recommended), push your branch to your forked repository and create a PR
(Pull Request) from your branch to the develop branch of the original repository.

## License

Specify the license. You can [read the license here](./LICENSE).

## Contact

You can reach out to me through the following URLs.

- [My website](https://santiagorodriguez.dev)
- [Github](https://github.com/santiago-rodrig)
- [LinkedIn](https://www.linkedin.com/in/santiago-andres-rodriguez-marquez/)
- [AngelList](https://angel.co/u/santiago-andres-rodriguez-marquez)
- [santo1996.29@gmail.com](mailto:santo1996.29@gmail.com)

