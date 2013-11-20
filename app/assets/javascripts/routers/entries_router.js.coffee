class Raffler.Routers.Entries extends Backbone.Router

  routes:
  	'': 'index'
  	'entries/:id': 'show'

  initialize: ->
  	@collection = new Raffler.Collections.Entries()
  	console.log(@collection)
  	@collection.fetch().then (data) ->
  		console.log data
  		
  	console.log("initialize routers: ")
  	console.log(@collection)

  index: ->
  	console.log("hello from index")
  	view = new Raffler.Views.EntriesIndex(collection: @collection)
  	$('#container').html(view.render().el)
  	
  show: (id) ->
  	console.log("hi: #{id}")