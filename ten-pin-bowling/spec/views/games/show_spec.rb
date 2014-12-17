require 'spec_helper'

describe "Game Show Page" do 

	subject { page }

	describe 'New Game' do 
		before do 
			@game = create(:game)
			visit game_path @game
		end

		it 'will display the team name' do 
			expect(page).to have_content @game.team_name
		end

		it 'will display a form for adding players' do 
			expect(page).to have_button 'Add Player'
		end

		it 'will display a button to start the game' do 
			expect(page).to have_button 'Start Game'
		end

		describe 'filling in add player form' do 
			before do 
				@name = Faker::Name.name
				fill_in 'player_name', with: @name
				click_button 'Add Player'
			end

			it 'will add a player to the game' do 
				expect(page).to have_content @name
			end
		end

		describe 'starting the game' do 
			describe 'with no players ' do 
				before do 
					click_button 'Start game'
				end

				it 'will not start the game' do 
					expect(page).to have_button 'Start Game'
					expect(page).to have_content 'Game requires at least 1 player'
				end
			end

			describe 'with players' do 
				before do 
					fill_in 'player_name', with: Faker::Name.name
					click_button 'Add Player'
					click_button 'Start Game'
				end

				it 'will start the game' do 
					expect(page).to have_content 'Game Started'
				end

				it 'will remove button to start game' do
					expect(page).to_not have_button	'Start Game'
				end

				it 'will remove form to add players' do 
					expect(page).to_not have_button 'Add Player'
				end
			end
		end
	end
end