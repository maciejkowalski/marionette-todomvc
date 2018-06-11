@TodoMVC.module 'Home', (Home, TodoMVC, Backbone, Marionette, $, _) ->

  @startWithParent = false

  class Home.Router extends Marionette.AppRouter
    appRoutes:
      'home' : 'listTodos'

    initialize: ->
      Home.Controller.initialize()
      console.log 'init Home.Router'

  API =
    listTodos: ->
      console.log 'API.listTodos'
      Home.Controller.listTodos()

  TodoMVC.addInitializer -> new Home.Router(controller: API)
