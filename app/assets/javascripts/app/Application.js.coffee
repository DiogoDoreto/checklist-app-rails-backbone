@ChecklistApp = do (Backbone, Marionette) ->

  class ChecklistApp extends Marionette.Application
    onBeforeStart: ->
      @rootView = new @ChecklistLayout

    onStart: ->
      @initViews()

      if Backbone.history
        Backbone.history.start()

    initViews: ->
      headerView = new @HeaderView
      @rootView.getRegion('header').show headerView

      formView = new @TaskFormView
      @rootView.getRegion('taskForm').show formView

      tasks = new @TasksCollection
      tasksView = new @TasksView collection: tasks
      @rootView.getRegion('taskList').show tasksView

  new ChecklistApp
