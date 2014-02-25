#= require 'spec_helper'

describe 'Cats page', ->
  beforeEach ->
    cat = Ember.Object.create
      id: 1
      name: 'Mimi'

    stubStore = sinon.stub(testHelper.lookup('store'), 'find')
    stubStore.withArgs('cat').returns([cat])

    visit '/'

  it 'shows the names of the cats', ->
    expect($('li').text()).to.equal('Mimi')

  it 'links to a cat page', ->
    Ember.run( ->
      $('a').click()
      expect($('.active')).to.exist
    )
