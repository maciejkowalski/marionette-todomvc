@TodoMVC.module 'Entities', (Entities, TodoMVC, Backbone, Marionette, $, _) ->

  class Entities.TodoModel extends Backbone.Model
    urlRoot: '/api/todos'

  class Entities.TodoCollection extends Backbone.Collection
    model: Entities.TodoModel
    url: -> '/api/todos'
