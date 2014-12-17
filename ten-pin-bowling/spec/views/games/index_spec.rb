require 'spec_helper'

describe "Game Index Page" do 

	before do 
		@game1 = create(:game)
		@game2 = create(:game)
		visit games_path
	end

	subject {page}

	it 'will display the game names' do 
		expect(page).to have_link @game1.team_name
		expect(page).to have_link @game2.team_name
	end

	it 'will have delete links' do 
		within "##{@game1.id}" do 
			expect(page).to have_link 'Delete Game'
		end

		within "##{@game2.id}" do 
			expect(page).to have_link 'Delete Game'
		end
	end
end