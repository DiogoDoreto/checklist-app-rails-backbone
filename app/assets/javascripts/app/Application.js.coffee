@ChecklistApp = do (Backbone, Marionette) ->

  App = new Marionette.Application

  App.on 'before:start', ->
    App.rootView = new ChecklistApp.ChecklistLayout

  App.on 'start', ->
    App.rootView.getRegion('main').show new ChecklistApp.MainView

    if Backbone.history
      Backbone.history.start()

  App
