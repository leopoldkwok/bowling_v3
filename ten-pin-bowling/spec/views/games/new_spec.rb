require 'spec_helper'

describe "Game New Page" do 

	before do
		visit_new_game_path
	end

	subject { page }

	describe 'filling in form' do 
		before do 
			fill_in 'game_team', with: "Bobbo"
		end

		it 'will create a new game' do 
			expect(Game.all.size).to eq 0
			click_button 'Create Game'
			expect(Game.all.size).to eq 1
		end
	end
end