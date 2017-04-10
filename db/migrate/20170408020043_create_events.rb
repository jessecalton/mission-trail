class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
      t.text :text
      t.string :image_url
      t.integer :attr_change_id, default: 1
      t.boolean :seen?, default: false

      t.timestamps
    end
  end
end
