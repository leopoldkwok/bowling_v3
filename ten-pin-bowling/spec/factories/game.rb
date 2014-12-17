require 'faker'

FactoryGirl.define do 
	factory :game do 
		team {Faker::Name.name}
		
		factory :started_game do 
			player {create(:player)}
			started true
		end

	end
end