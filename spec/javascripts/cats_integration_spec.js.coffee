#= require 'spec_helper'

describe 'Cats page', ->
  beforeEach ->
    cat = Ember.Object.create
      id: 1
      name: 'Mimi'

    mockStore = sinon.mock(testHelper.lookup('store'))
    mockStore.expects('find').withExactArgs('cat').returns([cat])

    visit '/'

  it 'shows the names of the cats', ->
    expect($('li').text()).to.equal('Mimi')

  it 'links to a cat page', ->
    mock = sinon.mock(testHelper.lookup('route', 'cats'))
    mock.expects('transitionTo').once().withExactArgs('cat', '1')
