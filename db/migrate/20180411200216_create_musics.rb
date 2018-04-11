class CreateMusics < ActiveRecord::Migration[5.1]
  def change
    create_table :musics do |t|
      t.string :url
      t.string :track
      t.string :artist
      t.string :category

      t.timestamps
    end
  end
end
