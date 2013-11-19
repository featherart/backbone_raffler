class Raffler.Routers.Entries extends Backbone.Router

  routes:
  	'': 'index'
  	'entries/:id': 'show'

  index: ->
  	console.log("hello from index")
  	view = new Raffler.Views.EntriesIndex()
  	$('#container').html(view.render().el)
  	
  show: (id) ->
  	console.log("hi: #{id}")