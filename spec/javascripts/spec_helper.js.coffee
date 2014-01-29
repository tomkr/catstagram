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
