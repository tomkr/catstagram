Catstagram.Cat = DS.Model.extend
  name: DS.attr()
  pictures: DS.hasMany('picture')
