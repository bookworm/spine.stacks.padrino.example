class About extends Spine.Controller 
  constructor: ->
    super
    
    @html JST['app/views/about']()

window.About = About
