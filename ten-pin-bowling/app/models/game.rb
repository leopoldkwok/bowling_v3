class Game < ActiveRecord::Base

	has_many :players, dependent: :destroy
	has_many :frames, dependent: :destroy

	validates :team, presence: true

	def team_name
		"Team #{team}"
	end

	def start
		self.started = true
		self.save
	end
	
end
