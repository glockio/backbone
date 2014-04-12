class App.InputReadingView extends Backbone.View

  template: JST['templates/input']

  initialize: (options) ->
    @app = options.app
    @render()
    @position()

  events:
    'submit form' : 'submit'

  submit: (e) ->
    e.preventDefault()
    value = @$('#reading').val()
    model = new App.ReadingItemModel reading : {sugar_level: value }
    @app.reading_list.add model


  render: ->
    @$el.html @template
    console.log @app

  position: ->
    $('#reading_form').html @$el
