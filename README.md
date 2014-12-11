## Simple Emberjs blog CRUD app with Rails API backend

Created for a presentation

## Getting Started

1. Add ember gems to Gemfile

```ruby
gem 'ember-rails'
gem 'ember-source'
```

```shell
$ bundle install
```

2. Bootstrap folders for ember

```shell
$ bundle exec rails g ember:bootstrap --app-name="App"
```

3. Fix application requires

```shell
# Rename application.js.coffee to ember.js.coffee
$ mv app/assets/javascripts/application.js.coffee app/assets/javascripts/ember.js.coffee
```

app/assets/javascripts/application.js
```js
//= require ember
```

4. Integrate Rails to Ember

app/controllers/ember_controller.rb
```ruby
class EmberController < ApplicationController
  def index
    render text: '', layout: 'application'
  end
end
```

config/routes.rb
```ruby
root to: 'ember#index'
```

```shell
# Delete public index.html
$ rm public/index.html
```

