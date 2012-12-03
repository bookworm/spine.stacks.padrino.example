class Pages extends Spine.Controller
  elements:
    '.items': 'items'

  constructor: ->
    super

    @html JST['app/views/pages/list']()

    Page.bind 'fetch', =>
      @el.addClass('loading')
  
    Page.bind 'refresh', =>
      @el.removeClass('loading')
      @render(arguments...)

    # Setup a Spine List
    @list = new Spine.List
      el: @items, 
      template: JST['app/views/pages/item_list'], 
      selectFirst: true
  
    @list.bind 'change', @change
    
    Page.fetch()

  render: (pages = []) =>
    @list.render(pages)

  change: (item) =>
    @navigate '/pages', item.id

window.Pages = Pages
