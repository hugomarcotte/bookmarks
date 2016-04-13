class PostsController
  init: ->
    console.log "posts init!"
    $('[data-behavior=save-post]').click ->
      savePost()
      return
    return

  index: ->
    console.log "post index!"

  savePost: ->
    alert('saving')

this.Bookmarks.posts = new PostsController
