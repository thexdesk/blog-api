App.PostsEditController = Em.ObjectController.extend
  actions:
    edit: ->
      @get('model').save().then =>
        @transitionToRoute('posts.show', @get('model'))
      , =>
        alert 'Post failed to update!'
