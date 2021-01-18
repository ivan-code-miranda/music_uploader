class CreateSongs < ActiveRecord::Migration[6.1]
  def change
    create_table :songs do |t|
      t.string :name
      t.string :artist
      t.string :attachement
      t.belongs_to :playlist 

      t.timestamps
    end
  end
end
