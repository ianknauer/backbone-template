// Generated by CoffeeScript 1.8.0
(function() {
  this.Demo.module("PageApp", function(PageApp, StarterApp, Backbone, Marionette, $, _) {
    var API;
    PageApp.Router = Marionette.AppRouter.extend({
      appRoutes: {
        "page": "showPage"
      }
    });
    API = {
      showPage: function() {
        PageApp.Show.Controller.showPage();
      }
    };
    StarterApp.on("page:show", function() {
      StarterApp.navigate("page");
      API.showPage();
    });
    StarterApp.addInitializer(function() {
      new PageApp.Router({
        controller: API
      });
    });
  });

}).call(this);
