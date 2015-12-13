do (ChecklistApp, Marionette) ->

  class ChecklistApp.TaskFormView extends Marionette.ItemView
    template: 'form'

    ui:
      input: 'input.description'

    events:
      'submit form': 'onSubmit'

    onSubmit: (e) ->
      e.preventDefault()

      ChecklistApp.triggerMethod 'add:task',
        description: @ui.input.val()

      @ui.input.val('')
