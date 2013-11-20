class Raffler.Views.EntriesIndex extends Backbone.View

  template: JST['entries/index']

  initialize: ->
  	console.log("views initialize")
  	#console.log(@collection)
  	@collection.on('sync', @render, @)

  render: ->
  	console.log("hi from render" + @collection.length)

  	$(@el).html(@template(entries: @collection))
  	this
