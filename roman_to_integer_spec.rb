require "lib/roman_to_integer"

describe "roman_to_integer tests" do
	it "should return 1999" do
		roman_to_integer('mcmxcix').should == 1999
	end
	it "should return 2387" do
		roman_to_integer('mmccclxxxvii').should == 2387
	end
	it "should return 1999" do
		roman_to_integer('mdcccclxxxxviiii').should == 1999
	end
	it "should return 110" do
		roman_to_integer('cx').should == 110
	end
	it "should return 510" do
		roman_to_integer('dx').should == 510
	end
end