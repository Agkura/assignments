class CreateTracks < ActiveRecord::Migration[5.0]
  def change
    create_table :tracks do |t|
      t.integer :album_id, null: false
      t.string :song, null: false
      t.text :lyrics, null: false
      t.boolean :regular, null: false, default: true

      t.timestamps
    end
    add_column :albums, :live, :boolean, null: false, default: false

    add_index :tracks, :album_id
  end
end
