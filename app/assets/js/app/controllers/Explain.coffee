class Explain extends Spine.Controller 
  constructor: ->
    super
    
    @html JST['app/views/explain']()

window.Explain = Explain
