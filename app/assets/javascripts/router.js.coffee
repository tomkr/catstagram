# For more information see: http://emberjs.com/guides/routing/

Catstagram.Router.map ()->
  @resource 'cats', path: '', ->
    @route 'cat', path: ':cat_id'

