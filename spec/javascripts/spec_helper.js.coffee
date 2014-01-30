#= require 'sinon'
#= require 'application'

mocha.ui('bdd')
mocha.globals(['Ember', 'DS', 'Catstagram', 'MD5'])
mocha.timeout(5)
chai.Assertion.includeStack = true

ENV = {
  TESTING: true
}

window.server = sinon.fakeServer.create()

window.testHelper =
  lookup: (object, object_name) ->
    name = object_name || "main"
    Catstagram.__container__.lookup(object + ":" + name)

Catstagram.Router.reopen
  location: 'none'

Konacha.reset = Ember.K

Catstagram.setupForTesting()
Catstagram.injectTestHelpers()

beforeEach ->
  Ember.run ->
    Catstagram.reset()

Ember.Test.adapter = Ember.Test.Adapter.create()
