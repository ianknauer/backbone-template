@Demo = do (Backbone, Marionette) -> 
  StarterApp = new Marionette.Application()

  StarterApp.addRegions
    mainRegion: "#main-region"

  StarterApp.navigate = (route, options) ->
    options or (options = {})
    Backbone.history.navigate route, options
    return

  StarterApp.getCurrentRoute = ->
    Backbone.history.fragment

  StarterApp.on "start", ->
    if Backbone.history
      Backbone.history.start()
      StarterApp.trigger "page:show" if @getCurrentRoute() is ""
    return

  StarterApp