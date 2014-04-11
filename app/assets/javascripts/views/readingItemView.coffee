class App.ReadingItemView extends Backbone.View 
  template: JST['templates/readingItem']



  initialize: ->
    console.log( "Init Fuction of Itme")
    @render()
   

  render: ->
    console.log @model
    x= @$el.html @template @model.toJSON()
    console.log @model
    console.log "render function of Reading Item"

   # formatted_date: ->
   #    moment @model.attributes.created_at  # Context here is View. So this method is aviable in the template