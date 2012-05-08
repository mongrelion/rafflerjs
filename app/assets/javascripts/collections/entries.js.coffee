class Rafflerjs.Collections.Entries extends Backbone.Collection

  model: Rafflerjs.Models.Entry

  url: '/api/entries'

  drawWinner: ->
    winner = @shuffle()[0]
    winner.win() if winner
