class Rafflerjs.Views.EntriesIndex extends Backbone.View

  template: JST['entries/index']

  events:
    'submit #new-entry' : 'createEntry'

  initialize: ->
    @collection.on 'reset', @render, @
    @collection.on 'add', @appendEntry, @

  render: ->
    @$el.html(@template())
    @collection.each(@appendEntry)
    this

  appendEntry: (entry) ->
    view = new Rafflerjs.Views.Entry model: entry
    $('#entries').append(view.render().el)

  createEntry: (e) ->
    e.preventDefault()
    newEntryName = $('#new-entry-name')
    attributes = name: newEntryName.val()
    @collection.create attributes,
      wait: true
      success: -> newEntryName.val ''
      error: @handleError

  handleError: (entry, response) ->
    if 422 == response.status
      errors = $.parseJSON(response.responseText).errors
      for attribute, messages of errors
        alert "#{attribute} #{message}" for message in messages
