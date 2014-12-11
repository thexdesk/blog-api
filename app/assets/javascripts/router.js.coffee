# For more information see: http://emberjs.com/guides/routing/

App.Router.reopen
  location: 'auto'

App.Router.map () ->
  @resource 'posts', ->
    @route 'show', path: '/:post_id'

