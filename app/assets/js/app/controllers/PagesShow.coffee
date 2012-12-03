class PagesShow extends Spine.Controller
  className: 'show'

  constructor: ->
    super
    @active @change
  
  render: ->
    @html JST['app/views/pages/show'](@item)
    
  change: (params) =>
    @item = Page.find(params.id)
    @render()

window.PagesShow = PagesShow
