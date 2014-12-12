App.IndexRoute = Em.Route.extend
  model: ->
    @store.find('post')

