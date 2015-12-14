do (ChecklistApp, Backbone) ->

  class ChecklistApp.TasksCollection extends Backbone.Collection
    url: '/tasks'

    initialize: ->
      @model = ChecklistApp.TaskModel

      @listenTo ChecklistApp, 'add:task', @addAndSave

    addAndSave: (task) =>
      @add(task).save()
