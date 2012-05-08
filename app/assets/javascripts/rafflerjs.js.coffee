window.Rafflerjs =
  Models:      {}
  Collections: {}
  Views:       {}
  Routers:     {}

  init: ->
    new Rafflerjs.Routers.Entries()
    Backbone.history.start()

$ ->
  Rafflerjs.init()
