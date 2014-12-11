App.PostsCreateController = Em.ObjectController.extend
  actions:
    submit: ->
      post = @store.createRecord('post', {
        title: @get('title')
        body: @get('body')
      })

      post.save().then =>
        @transitionToRoute('index')
      , =>
        alert 'Post failed to save!'

