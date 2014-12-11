App.ApplicationRoute = Em.Route.extend
  model: ->
    @store.find('post')

