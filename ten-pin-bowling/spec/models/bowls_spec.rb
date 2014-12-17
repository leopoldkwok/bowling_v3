require 'spec_helper'

describe Bowl do 

	it {should belong_to :frame}

	it {should respond_to :score}

end