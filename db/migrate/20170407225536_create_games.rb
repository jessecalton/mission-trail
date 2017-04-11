class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :username
      t.integer :fomo
      t.integer :battery
      t.integer :time, default: 60
      t.integer :money
      t.string :occupation
      t.boolean :checked_instagram, default: false
      t.boolean :checked_tinder, default: false
      t.boolean :talked_to_locals, default: false
      t.boolean :checked_googlemaps, default: false
      t.integer :user_id

      t.timestamps
    end
  end
end
