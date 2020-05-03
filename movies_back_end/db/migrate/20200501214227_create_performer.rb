class CreatePerformer < ActiveRecord::Migration[6.0]
  def change
    create_table :performers do |t|
      t.string :name
      t.datetime :birth_date
      t.timestamps
    end
  end
end
