class BookmarksController < ApplicationController
  before_action :authenticate_user!

  # GET /bookmarks
  # GET /bookmarks.json
  def index
    @bookmarks = Bookmark.all

    respond_to do |format|
      format.json { render json: @bookmarks }
    end
  end

  # POST /bookmarks
  # POST /bookmarks.json
  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.user = current_user

    respond_to do |format|
      if @bookmark.save
        format.html { render partial: 'bookmark', locals: { bookmark: @bookmark } }
        format.json { render json: @bookmark, status: :created, location: @bookmark }
      else
        format.json { render json: @bookmark.errors, status: :unprocessable_entity }
      end
    end
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
