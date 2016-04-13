class UsersController
  init: ->
    console.log "init users!"

  index: ->
    console.log "user index!"

this.Bookmarks.users = new UsersController