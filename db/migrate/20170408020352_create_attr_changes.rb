class CreateAttrChanges < ActiveRecord::Migration[5.0]
  def change
    create_table :attr_changes do |t|
      t.integer :fomo_change
      t.integer :battery_change
      t.integer :time_change
      t.integer :money_change

      t.timestamps
    end
  end
end
