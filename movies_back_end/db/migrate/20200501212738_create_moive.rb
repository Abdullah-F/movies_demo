class CreateMoive < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :name
      t.text :description
      t.datetime :release_date
      t.timestamps
    end
  end
end
