class CreateAward < ActiveRecord::Migration[6.0]
  def change
    create_table :awards do |t|
      t.string :name
    end
  end
end
