class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.string :author
      t.string :youtube_url
      t.string :cover_url
      t.integer :plays_counter

      t.timestamps
    end
  end
end
