do (ChecklistApp, Marionette) ->

  class ChecklistApp.TasksView extends Marionette.CompositeView
    template: 'task-list'

    childViewContainer: 'ul.tasks'

    ui:
      emptyBlock: '.empty'

    collectionEvents:
      update: 'onUpdate'

    getChildView: ->
      ChecklistApp.TaskView

    templateHelpers: =>
      isEmpty: =>
        @collection.length is 0

    onUpdate: ->
      @ui.emptyBlock.toggleClass 'show', @collection.length is 0
