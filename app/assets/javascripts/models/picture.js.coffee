Catstagram.Picture = DS.Model.extend
  url: DS.attr('string')
  cats: DS.hasMany('Catstagram.Cat')
