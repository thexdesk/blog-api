App.PostsShowRoute = Em.Route.extend
  model: (params) ->
    @store.find('post', params.post_id)

  actions:
    delete: ->
      @currentModel.destroyRecord().then =>
        @transitionTo('index')
      , =>
        alert 'Post failed to delete!'

