## Simple Emberjs Blog App with Rails API

Created for a presentation

## Getting Started

#### Installation

Let's start off by installing the required gems for this project...

```ruby
gem 'ember-rails'
gem 'ember-source'
```

... and install those gems

```shell
$ bundle install
```

The gem `ember-rails` comes with a bootstrap generator that will scaffold out
our application. By ember conventions, let's default our application name in the
browser's window as `App`

```shell
$ bundle exec rails g ember:bootstrap --app-name="App"
```

#### Integrating with Rails

Out of the box, `ember-rails` has trouble requiring the javascript files in the
right order. We're going to fix this by renaming the file and ensure that the
Ember app is initialized before our models/controllers/etc are loaded.

```shell
# Rename application.js.coffee to ember.js.coffee
$ mv app/assets/javascripts/application.js.coffee app/assets/javascripts/ember.js.coffee
```
Explicitly require `ember.js.coffee` so that requiring order is under our
control

```js
# app/assets/javascripts/application.js
//= require ember
```
Let's create a base controller for anchoring our Ember app. Note that we don't
have to render anything except for the layout which will have our javascript
include tags.

One nice thing is that we can still use Rail's great asset pipeline for our
Ember App.

```ruby
# app/controllers/ember_controller.rb
class EmberController < ApplicationController
  def index
    render text: '', layout: 'application'
  end
end
```

Anchor our application root to use the Ember controller we just created...

```ruby
# config/routes.rb
root to: 'ember#index'
```

And let's finish it off by deleting the public `index.html` fodder

```shell
# Delete public index.html
$ rm public/index.html
```

