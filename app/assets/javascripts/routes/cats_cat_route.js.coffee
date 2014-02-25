Catstagram.CatsCatRoute = Ember.Route.extend
  model: (args) ->
    @get('store').find('cat', args.cat_id)

  setupController: (controller, model) ->
    controller.set('model', model)
