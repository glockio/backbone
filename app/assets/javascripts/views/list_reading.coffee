class App.ListReadingView extends Backbone.View
  template: JST['templates/list_view']

  initialize: (options) ->
    @app = options.app
    @app.reading_list = new App.ReadingList

    @listenTo @app.reading_list, 'add', @add_one
    #@collection.on 'change'

    @app.reading_list.fetch
      success: =>
        @add_all()
        
  add_all: ->
    @$el.html @template
    @app.reading_list.each (model) =>
      @add_one(model)

    @position()



  add_one: (model) ->
    view = new App.ReadingItem model : model
    @$el.append view.el

    #el find 
    #@$('div') 

  position: ->
    console.log @$el.html()
    $('#reading_list').html @$el