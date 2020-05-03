class CreateDirector < ActiveRecord::Migration[6.0]
  def change
    create_table :directors do |t|
      t.string :name
      t.datetime :birth_date
      t.timestamps
    end
  end
end
