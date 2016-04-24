class BookmarksController < ApplicationController
  before_action :authenticate_user!

  # GET /bookmarks
  # GET /bookmarks.json
  def index
    @bookmarks = Bookmark.all
    @bookmark = Bookmark.new()
  end

  # GET /bookmarks/new
  def new
    @bookmark = Bookmark.new()
  end

  # POST /bookmarks
  # POST /bookmarks.json
  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.user = current_user

    if @bookmark.save
      notice = 'Bookmark was successfully created.'
    else
      notice = "Bookmark was not saved! #{@bookmark.errors}"
    end

    redirect_to bookmarks_url, notice: notice
  end

  def destroy
    @bookmark = Bookmark.find_by_id(params[:id])
    @bookmark.destroy

    redirect_to bookmarks_url, notice: 'Bookmark was successfully destroyed.'
  end

  private

    def bookmark_params
      params.require(:bookmark).permit(:url)
    end
end 
