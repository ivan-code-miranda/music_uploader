class AddPlaylistReferenceToSongs < ActiveRecord::Migration[6.1]
  def change
    add_reference :songs, :playlist, index: true, foreign_key: true
  end
end
