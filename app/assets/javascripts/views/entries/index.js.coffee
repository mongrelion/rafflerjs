class Rafflerjs.Views.EntriesIndex extends Backbone.View

  template: JST['entries/index']

  events:
    'submit #new-entry' : 'createEntry'

  initialize: ->
    @collection.on 'reset', @render, @
    @collection.on 'add', @render, @

  render: ->
    @$el.html(@template(entries: @collection))
    this

  createEntry: (e) ->
    e.preventDefault()
    @collection.create name: $('#new-entry-name').val()
