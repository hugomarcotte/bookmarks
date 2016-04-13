class PostsController < ApplicationController

  before_action :authenticate_user!

  def index
    @posts = [{ :url => 'www.google.com' }, { :url => 'www.linkedin.com ' }]
  end
end
