class CreateOptions < ActiveRecord::Migration[5.0]
  def change
    create_table :options do |t|
      t.text :text
      t.integer :event_id
      t.string :image_url

      t.timestamps
    end
  end
end
