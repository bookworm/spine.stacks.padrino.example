#= require json2
#= require spine
#= require spine/ajax
#= require spine/route
#= require spine/list
#= require spine/manager
#
#= require_tree ./lib
#= require_tree ./models
#= require_tree ./controllers
#= require_tree ./views

class App extends Spine.Controller
  constructor: ->
    super
    @main = new Main
    @append @main.active()
    
    Spine.Route.setup()

window.App = App

$(document).ready ->
  app = new App(el: $('#app'));      

  $('.menu a').click (e) ->
    $(this).parent().parent().children('a.active').removeClass('active')
    $(this).addClass('active')
    route = $(this).attr('href')
    app.navigate(route)
    e.preventDefault()
