class AddNumberToBowls < ActiveRecord::Migration
  def change
    add_column :bowls, :number, :integer
  end
end
