App.module "PageApp", (PageApp, App, Backbone, Marionette, $, _) ->
  PageApp.Router = Marionette.AppRouter.extend(appRoutes:
    page: "showPage"
  )
  API = showPage: ->
    PageApp.Show.Controller.showPage()
    return

  ContactManager.on "page:show", ->
    ContactManager.navigate "page"
    API.showPage()
    return

  ContactManager.addInitializer ->
    new PageApp.Router(controller: API)
    return

  return
