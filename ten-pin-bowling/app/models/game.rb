class Game < ActiveRecord::Base

	has_many :players, dependent: :destroy
	has_many :frames, dependent: :destroy

	def team_name
		"Team #{team}"
	end
	
end
