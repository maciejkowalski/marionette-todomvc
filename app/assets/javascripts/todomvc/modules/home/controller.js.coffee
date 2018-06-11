@TodoMVC.module 'Home', (Home, TodoMVC, Backbone, Marionette, $, _) ->

  Home.Controller =
    todos: null

    initialize: ->
      console.log('Home.Controller initialize')

    listTodos: ->
      console.log 'fetch todos'
