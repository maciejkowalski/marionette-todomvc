@TodoMVC = @TodoMVC || {}

app = do (Backbone, Marionette) ->
  App = new Marionette.Application

  App.rootRoute = 'home'
#  App.Radio = Backbone.Radio

  mainRegion = Marionette.Region.extend(el: '#main-region')

  App.addRegions
    mainRegion: mainRegion

  App.addInitializer ->
    App.module('Home').start()


  App.on 'start', (options) ->
    console.log 'app on start'
    if Backbone.history
      Backbone.history.start({pushstate: true})
      if Backbone.history.fragment == ''
        Backbone.history.navigate(@rootRoute, trigger: true)

  App

$.extend(@TodoMVC, app)
