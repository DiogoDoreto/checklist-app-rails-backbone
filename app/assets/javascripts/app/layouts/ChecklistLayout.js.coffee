do (ChecklistApp, Marionette) ->

  class ChecklistApp.ChecklistLayout extends Marionette.LayoutView
    el: '#checklist-app'
    template: false

    regions:
      main: '#main'
