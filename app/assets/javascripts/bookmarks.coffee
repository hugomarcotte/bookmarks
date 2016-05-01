class BookmarksController
  controller = null

  init: ->
    controller = this
    $('#error').hide
    return

  index: ->
    $('#new_bookmark').on('ajax:success', (e, data, status, xhr) ->
      controller.add_bookmark xhr.responseText
    ).on "ajax:error", (e, xhr, status, error) ->
      $('#error').show

  add_bookmark: (bookmark) -> 
    $('#bookmark_list li:first').before '<li>' + bookmark + '</li>'

this.MyBookmarks.bookmarks = new BookmarksController
