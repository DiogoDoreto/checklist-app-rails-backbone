do (Marionette) ->

  Marionette.Renderer.render = (template, data) ->
    tmpl = JST["app/templates/" + template]
    unless tmpl
      throw "Template #{template} not found!"
    tmpl data
