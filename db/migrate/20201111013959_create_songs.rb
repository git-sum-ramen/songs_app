class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :album
      t.integer :year
      t.string :artist

      t.timestamps
    end
  end
end
