require 'spec_helper'

describe Game do 

	it {should have_many :players}
	it {should have_many :frames}

	it {should respond_to :frames_count}
	it {should respond_to :team}
	it {should respond_to :team_name}

	it {should validate_presence_of :team }

	describe ".team_name" do 
		before do
			@game = create(:game)
		end

		it 'will return team name with Team prepended' do 
			expect(@game.team_name).to eq "Team #{@game.team}"
		end
	end

end