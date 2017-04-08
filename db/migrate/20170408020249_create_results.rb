class CreateResults < ActiveRecord::Migration[5.0]
  def change
    create_table :results do |t|
      t.text :text
      t.integer :option_id
      t.integer :attr_change_id
      t.integer :event_id

      t.timestamps
    end
  end
end
