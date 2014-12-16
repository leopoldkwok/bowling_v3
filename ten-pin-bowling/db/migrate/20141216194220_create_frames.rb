class CreateFrames < ActiveRecord::Migration
  def change
    create_table :frames do |t|
      t.string :player_id
      t.string :game_id
      t.integer :number

      t.timestamps
    end
  end
end
