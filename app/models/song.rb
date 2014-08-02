class Song < ActiveRecord::Base

  belongs_to :playlist
  validates_presence_of :title, :youtube_url

end
