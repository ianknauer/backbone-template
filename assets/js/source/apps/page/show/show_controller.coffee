@Demo.module "PageApp.Show", (Show, StarterApp, Backbone, Marionette, $, _) ->

  Show.Controller = showPage: ->
    view = new Show.Message()
    StarterApp.mainRegion.show view
  return
