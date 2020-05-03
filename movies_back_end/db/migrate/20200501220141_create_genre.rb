class CreateGenre < ActiveRecord::Migration[6.0]
  def change
    create_table :genres do |t|
      t.integer :genre_type
      t.timestamps
    end
  end
end
