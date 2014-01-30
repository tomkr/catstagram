Catstagram.CatsCatRoute = Ember.Route.extend
   model: (args) ->
    @get('store').find('cat', args.cat_id)

  setupController: (controller, model) ->
    alert JSON.stringify(model)
    controller.set('model', model)
