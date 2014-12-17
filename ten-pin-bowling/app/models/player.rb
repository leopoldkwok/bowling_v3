class Player < ActiveRecord::Base

	has_many :frames, dependent: :destroy

	belongs_to :game

	validates :name, presence: true

	def score
		"-"
	end
	
end
