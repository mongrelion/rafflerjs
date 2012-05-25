class Rafflerjs.Views.Entry extends Backbone.View

  template: JST['entries/entry']

  tagName: 'tr'

  initialize: ->
    @model.on 'change', @render, @
    @model.on 'highlight', @highlightWinner, @

  highlightWinner: ->
    $('span.label.winner').removeClass 'label-success'
    @$('span.label.winner').addClass 'label-success'

  render: ->
    @$el.html @template entry: @model
    @
