@Demo.module "PageApp", (PageApp, StarterApp, Backbone, Marionette, $, _) ->
  PageApp.Router = Marionette.AppRouter.extend(appRoutes:
    "page": "showPage"
  )

  API = showPage: ->
    PageApp.Show.Controller.showPage()
    return

  StarterApp.on "page:show", ->
    StarterApp.navigate "page"
    API.showPage()
    return

  StarterApp.addInitializer ->
    new PageApp.Router(controller: API)
    return

  return
