# For more information see: http://emberjs.com/guides/routing/

App.Router.reopen
  location: 'auto'

App.Router.map ()->
  @resource 'posts', ->
    @route 'create'
    @route 'show', path: '/:post_id'
    @route 'edit', path: '/:post_id/edit'

