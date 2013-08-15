# Scaffold project
This is a basic, lightly-opinionated, fully functional Sinatra application scaffold. It features automatically running minispec (via [Guard](https://github.com/guard/guard)) and a basic layout via reference to [Bootstrap 3](http://getbootstrap.com).  Ruby version 2.0+ is assumed.  A simple global replacement of the word `Scaffold` with your app name should get you up and running.

## Guard auto-testing
Guard should be ready to rock, just type `$ guard` in a terminal and leave it running.  Note this is setup for OSX Mountain Lion notifications; if you develop on something else you'll want to tweak Guard settings.

Tests are setup to run automatically when a ruby file is changed in the `/app` subfolder.  This is not fancy, all tests are in the `/spec` root folder and should be named the same as your ruby file with `_spec` appended.  So if you have a file `/app/model/user.rb`, it will look for '/spec/user_spec.rb' whenever that file changes.  All specs should `require_relative 'setup'`

## Manual testing
Type `thin start` to run a server listening on port 3000, then go to `localhost:3000` to see a hello world output.
