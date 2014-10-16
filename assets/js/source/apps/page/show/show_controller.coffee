App.module "PageApp.Show", (Show, App, Backbone, Marionette, $, _) ->

  Show.Controller = showPage: ->
    view = new Show.Message()
    App.mainRegion.show view
  return
