class MainPageController < ApplicationController
  before_filter :authenticate_user!

  def index
    @songs = Song.paginate(page: params[:page], per_page: 8).order('created_at DESC')
  end

end
