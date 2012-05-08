class Rafflerjs.Routers.Entries extends Backbone.Router
  routes:
    ''            : 'index'
    'entries/:id' : 'show'

  initialize: ->
    @collection = new Rafflerjs.Collections.Entries()
    @collection.fetch()

  index: ->
    view = new Rafflerjs.Views.EntriesIndex collection: @collection
    $('#container').html(view.render().el)

  show: (id) ->
    alert "Entry #{id}"