require 'spec_helper'

describe Bowls do 

	it {should belong_to :frame}

	it {should belong_to :score}

end