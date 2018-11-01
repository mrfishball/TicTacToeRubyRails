# TicTacToeRails::API

[![Build Status](https://travis-ci.com/mrfishball/TicTacToeRubyRails.svg?branch=master)](https://travis-ci.com/mrfishball/TicTacToeRubyRails)

**TicTacToeRails::API** is alive [@Heroku](https://live-ttt-rubyrails-api.herokuapp.com)!

It is used to implement your very own Tic-Tac-Toe game on virtually any platform of your choice.

### What is an API app?

**TicTacToeRails::API** provides a programmatically accessible API alongside their web application.
For example, GitHub provides [an API](http://developer.github.com) that you can use from your own custom clients.

With the advent of client-side frameworks, more developers are using Rails to build a backend that is shared between their web application and other native applications.

For example, Twitter uses its [public API](https://dev.twitter.com) in its web application, which is built as a static site that consumes JSON resources.

### Documentation

Coming soon

Development
------------------------------

### Prerequisites

You're going to need:

 - **Ruby, version 2.5.1 or newer**
 - **Bundler** — If Ruby is already installed, but the `bundle` command doesn't work, just run `gem install bundler` in a terminal.

### Getting Set Up

1. Fork this repository on GitHub.
2. Clone *your forked repository* (not our original one) to your hard drive with `git clone https://github.com/YOURUSERNAME/TicTacToeRubyRails.git`
3. `cd TicTacToeRubyRails`
4. Initialize and start TicTacToeRubyRails.

```shell
# run this to run locally
bundle install
bundle exec rails s
```
The API is now live at http://localhost:3000. Whoa! That was fast!

### Testing with Rspec

```shell
# run this to run tests
bundle exec rails spec
```

## Author

Steven Kwok (@mrfishball)

## License

TTT is released under the MIT License. See the LICENSE file for further
details.
