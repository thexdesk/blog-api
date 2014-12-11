# For more information see: http://emberjs.com/guides/routing/

App.Router.map ()->
  @resource('posts') ->
    @route 'create'
    @route 'show', path: '/:id'

