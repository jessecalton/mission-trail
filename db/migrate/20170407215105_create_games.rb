class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :player_name
      t.integer :fomo_level
      t.integer :battery_level
      t.integer :popularity_level
      t.integer :time_remaining, default: 120
      t.integer :money_level
      t.string :occupation
      t.integer :user_id

      t.timestamps
    end
  end
end
