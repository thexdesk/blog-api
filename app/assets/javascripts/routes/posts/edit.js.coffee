App.PostsEditRoute = Em.Route.extend
  model: (params) ->
    @store.find('post', params.post_id)
