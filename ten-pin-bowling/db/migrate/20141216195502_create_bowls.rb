class CreateBowls < ActiveRecord::Migration
  def change
    create_table :bowls do |t|
      t.string :score
      t.integer :frame_id

      t.timestamps
    end
  end
end
