class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
      t.text :text
      t.integer :game_id
      t.string :image_url

      t.timestamps
    end
  end
end
