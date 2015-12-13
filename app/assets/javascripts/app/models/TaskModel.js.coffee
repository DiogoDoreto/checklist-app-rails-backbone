do (ChecklistApp, Backbone) ->

  class ChecklistApp.TaskModel extends Backbone.Model
    defaults:
      done: false
