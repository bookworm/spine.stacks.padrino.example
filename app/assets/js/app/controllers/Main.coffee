#= require ./Pages
#= require ./PagesShow
class Main extends Spine.Stack
  controllers:
    show: PagesShow
    list: Pages
    about: About
    explain: Explain

  default: 'about'

  routes:
    '/pages': 'list'
    '/pages/:id': 'show'
    '/about': 'about'
    '/explain': 'explain'

window.Main = Main
