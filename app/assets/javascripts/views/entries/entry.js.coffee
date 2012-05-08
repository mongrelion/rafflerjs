class Rafflerjs.Views.Entry extends Backbone.View

  template: JST['entries/entry']

  tagName: 'tr'

  render: ->
    @$el.html(@template(entry: @model))
    this
