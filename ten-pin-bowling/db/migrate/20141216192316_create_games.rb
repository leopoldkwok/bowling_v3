class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :frames_count, default: 10

      t.timestamps
    end
  end
end
