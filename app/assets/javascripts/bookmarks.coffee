class BookmarksController
  init: ->
    controller = this
    $('[data-behavior=save-post]').click ->
      controller.savePost()
      return
    return

  index: ->
    console.log "bookmark index!"

  savePost: ->
    alert('saving')

this.MyBookmarks.bookmarks = new BookmarksController
