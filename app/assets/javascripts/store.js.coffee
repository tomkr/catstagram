# http://emberjs.com/guides/models/using-the-store/


Catstagram.ApplicationAdapter = DS.RESTAdapter.extend
  namespace: 'api'

Catstagram.Store = DS.Store.extend
  # Override the default adapter with the `DS.ActiveModelAdapter` which
  # is built to work nicely with the ActiveModel::Serializers gem.
  adapter: Catstagram.ApplicationAdapter.create()

