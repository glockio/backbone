class App.ReadingsView extends Backbone.View 
  template: JST['templates/readings']
  tagName: 'ul'
  id: 'reading-list'

  initialize: -> 
    console.log("init FUnction Readings VIew")
    @readingsCollection = new App.ReadingsCollection()
    @readingsCollection.fetch
      success:=>
        @render()
        @position()
    

  render: -> 
  
    @$el.html @template #sets el to what is in template  
    console.log '-------'
    console.log @readingsCollection
    console.log '-------'
    @readingsCollection.each (reading) =>
      readingView = new App.ReadingItemView(model: reading)
      @$el.append readingView.el 
    
      

    console.log "render function Readings View Fire"

  position: -> 
    $('#readings').html(@$el)
    console.log("Position FUcntion Readings View Fire")



    # @.collection.forEach (user) =>  #use of Fat Arrow to provide correct context `
    #     userView= new UserView(model: userInstance)
    #     @.$el.append(userView.render().el)  #calls the render() function on the userInstance View