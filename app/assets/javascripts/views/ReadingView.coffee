
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