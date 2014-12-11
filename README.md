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

# Change require_tree to require ember
$ vim app/assets/javascripts/application.js
//= require ember
```

4. Integrate Rails to Ember

```shell
# Create Ember controller with #index
$ vim app/controllers/ember_controller.rb
class EmberController < ApplicationController
  def index
    render text: '', layout: 'application'
  end
end

# Root application to ember#index
$ vim config/routes.rb
root to: 'ember#index'

# Delete public index.html
$ rm public/index.html
```

