App = new Marionette.Application()

App.addRegions
  headerRegion: "#header-region"
  mainRegion: "#main-region"

App.navigate = (route, options) ->
  options or (options = {})
  Backbone.history.navigate route, options
  return

App.getCurrentRoute = ->
  Backbone.history.fragment

App.on "start", ->
  if Backbone.history
    Backbone.history.start()
    App.trigger "page:show"  if @getCurrentRoute() is ""
  return
