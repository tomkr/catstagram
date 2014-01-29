Catstagram.CatsRoute = Ember.Route.extend
  model: ->
    @get('store').find('cat')
