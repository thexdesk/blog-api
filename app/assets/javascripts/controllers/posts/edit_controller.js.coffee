App.PostsEditController = Em.ObjectController.extend
  actions:
    submit: ->
      @get('model').save().then =>
        @transitionToRoute('index')
      , =>
        alert 'Post failed to save!'

