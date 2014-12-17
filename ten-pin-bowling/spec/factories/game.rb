require 'faker'

FactoryGirl.define do 
	factory :game do 
		team {Faker::Name.name}
	end
end