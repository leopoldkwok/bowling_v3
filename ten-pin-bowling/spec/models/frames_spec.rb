require 'spec_helper'

describe Frame do 

	it {should belong_to :player}
	it {should belong_to :game}

	it {should have_many :bowls}
	it {should respond_to :number}
end