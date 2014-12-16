class AddTeamToGames < ActiveRecord::Migration
  def change
    add_column :games, :team, :string
  end
end
