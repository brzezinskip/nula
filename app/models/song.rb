class Song < ActiveRecord::Base

  belongs_to :playlist
  validates_presence_of :title, :author, :youtube_url, :cover_url

end
