class AddNewsableToNews < ActiveRecord::Migration[6.0]
 def up
    change_table :news do |t|
      t.references :newsable, polymorphic: true
    end
  end

  def down
    change_table :news do |t|
      t.remove_references :newsable, polymorphic: true
    end
  end
end
