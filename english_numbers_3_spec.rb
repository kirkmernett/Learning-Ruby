require "lib/english_numbers_3"

describe "This should convert numbers into their english form" do
	it "Should convert 999 into Nine hundred Ninety-Nine" do
		eng_convert(999).should == 'Nine hundred Ninety-Nine'
	end
	it "Should convert 188737254 into One hundred Eighty-Eight million, Seven hundred Thirty-Seven thousand, Two hundred Fifty-Four" do
		eng_convert(188737254).should == 'One hundred Eighty-Eight million, Seven hundred Thirty-Seven thousand, Two hundred Fifty-Four'
	end
	it "Should convert 0 into Zero" do
		eng_convert(0).should == 'Zero'
	end
	it "Should return 'Please enter a number' if anything other than just a number is given" do
		eng_convert('Hi!').should == 'Please enter a number'
		eng_convert('apple').should == 'Please enter a number'
		eng_convert('').should == 'Please enter a number'
		eng_convert(' ').should == 'Please enter a number'
		eng_convert('!').should == 'Please enter a number'
		eng_convert('12c6').should == 'Please enter a number'
	end
end