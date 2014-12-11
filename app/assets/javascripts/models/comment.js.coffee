App.Comment = DS.Model.extend
  body: DS.attr('string')
  post: DS.belongsTo('post', {async: true})

