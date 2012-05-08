class Rafflerjs.Models.Entry extends Backbone.Model

  isWinner: ->
    @get('winner') == true

  win: ->
    @set winner: true
    @save()
    @trigger 'highlight'
