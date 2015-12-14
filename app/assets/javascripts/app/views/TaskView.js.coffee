do (ChecklistApp, Marionette) ->

  class ChecklistApp.TaskView extends Marionette.ItemView
    tagName: 'li'

    className: 'task'

    template: 'task'

    ui:
      checkbox: 'input[type=checkbox]'

    events:
      'change @ui.checkbox': 'onToggleDone'
      'click .remove': 'onClickRemove'

    modelEvents:
      'change done': 'onChangeDone'

    onToggleDone: ->
      checked = @ui.checkbox.prop('checked')
      @model.set done: checked
      @model.save()

    onChangeDone: ->
      isDone = @model.get 'done'

      @$el.toggleClass 'done', isDone
      @ui.checkbox.prop 'checked', isDone

    onClickRemove: (e) ->
      e.preventDefault()
      @model.destroy()

    onRender: ->
      @onChangeDone()
