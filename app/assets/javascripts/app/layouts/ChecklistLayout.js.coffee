do (ChecklistApp, Marionette) ->

  class ChecklistApp.ChecklistLayout extends Marionette.LayoutView
    el: '#checklist-app'

    template: false

    regions:
      header: '#header'
      taskForm: '#task-form'
      taskList: '#task-list'
