#= require 'spec_helper'

describe 'Cat page', ->
  beforeEach ->
    picture = Ember.Object.create
      id: 1
      url: 'testUrl'

    cat = Ember.Object.create
      id: 1
      name: 'Mimi'
      pictures: [picture]

    stubStore = sinon.stub(testHelper.lookup('store'), 'find')
    stubStore.withArgs('cat', '1').returns(cat)
    stubStore.withArgs('cat').returns([cat])

    visit '/1'

  it 'shows pictures belonging to the cat', ->
    expect($('img').attr('src')).to.equal('testUrl')
