class AddCensorshipToMovie < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :censorship, :integer
  end
end
