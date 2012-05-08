class Rafflerjs.Views.EntriesIndex extends Backbone.View

  template: JST['entries/index']

  initialize: ->
    @collection.on 'reset', @render, @

  render: ->
    @$el.html(@template(entries: @collection))
    this
