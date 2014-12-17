require 'spec_helper'

describe Player do 

	it {should have_many :frames}
	it {should belong_to :game}
	it {should respond_to :name}
	it {should respond_to :score}
	
end