class AddAwardableToAwards < ActiveRecord::Migration[6.0]
 def up
    change_table :awards do |t|
      t.references :awardable, polymorphic: true
    end
  end

  def down
    change_table :awards do |t|
      t.remove_references :awardable, polymorphic: true
    end
  end
end
