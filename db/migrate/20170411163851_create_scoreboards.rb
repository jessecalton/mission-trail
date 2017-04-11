class CreateScoreboards < ActiveRecord::Migration[5.0]
  def change
    create_table :scoreboards do |t|
      t.string :initials, limit: 3, default: "AAA"
      t.integer :score, null: false

      t.timestamps
    end
  end
end
