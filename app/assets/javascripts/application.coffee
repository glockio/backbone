#= namespace
#= require jquery
#= require jquery_ujs
#= require underscore
#= require backbone
#= require namespace
#= require_tree ./models
#= require_tree ./collections
#= require_tree ./templates
#= require_tree ./views
#= require_self


 class App.ReadingRouter extends Backbone.Router

  initialize: (id) ->
    inputView = new App.InputReadingView app: @
    listView = new App.ListReadingView app: @
