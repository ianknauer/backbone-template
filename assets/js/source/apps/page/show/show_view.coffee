App.module "PageApp.Show", (Show, App, Backbone, Marionette, $, _) ->
  Show.Message = Marionette.ItemView.extend(template: "#page-message")
  return