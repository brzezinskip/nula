class Song < ActiveRecord::Base

  belongs_to :playlist
  validates_presence_of :title, :youtube_url

  def fetch_youtube
    songs = FetchXml.new.yt_urls()
    songs.each do |song|
      unless Song.where(youtube_url: song[0]).length > 0
        Song.create(title: song[1], youtube_url: song[0] )
      end
    end
  end
end
