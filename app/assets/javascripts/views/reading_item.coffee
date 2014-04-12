class App.ReadingItem extends Backbone.View

  template: JST['templates/item_view']

  tagName: 'li'

  initialize: ->
    @render()

  events:
    'click .delete' : 'delete'

  delete: ->

    # Backbone method http://documentcloud.github.io/backbone/#View-remove
    @remove()
    @model.destroy()

  render: ->
    @$el.html @template @model.toJSON()
