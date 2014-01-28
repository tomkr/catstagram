Catstagram.Cat = DS.Model.extend
  name: DS.attr('string')
  pictures: DS.hasMany('Catstagram.Picture')
