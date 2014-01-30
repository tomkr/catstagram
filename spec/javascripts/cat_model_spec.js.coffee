#= require spec_helper

describe "Cat", ->
  it "is a DS.Model", ->
    expect(Catstagram.Cat).to.exist
    expect(DS.Model.detect(Catstagram.Cat)).to.exist

  it "has a name", =>
    Ember.run( ->
      cat = testHelper.lookup('store').createRecord 'cat', name: 'Mimi'
      expect(cat.get 'name').to.equal 'Mimi'
    )
