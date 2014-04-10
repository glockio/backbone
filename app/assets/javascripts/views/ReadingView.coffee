
class App.ReadingView extends Backbone.View
  template: JST['templates/index']

  initialize: -> 

    console.log("BackBone Running")
    @render()
    @position()

  render: -> 
    @$el.html(@template)
    console.log(this.el)

  position: -> 
    $('#reading-form').html(@$el)

  events :

    'click button' : 'getValue'

  getValue:(event) -> 
    event.preventDefault()
    value= $('form input').val()
    @addOne(value)

  addOne: (value) ->
    readingModel=  new App.ReadingModel(sugar_level : value)
    console.log(readingModel)
    readingModel.save()
    


    
 

