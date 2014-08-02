class MainPageController < ApplicationController
  before_filter :authenticate_user!

  def index
    songs = FetchXml.new.yt_urls()
    songs.each do |song|
      unless Song.where(youtube_url: song[0]).length > 0
        Song.create(title: song[1], youtube_url: song[0] )
      end
    end
    @songs = Song.paginate(page: params[:page], per_page: 8).order('created_at DESC')
  end

end
