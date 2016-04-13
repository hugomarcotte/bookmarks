class HomeController
  init: ->
    console.log "home init!"

  index: ->
    console.log "home index!"

this.Bookmarks.home = new HomeController