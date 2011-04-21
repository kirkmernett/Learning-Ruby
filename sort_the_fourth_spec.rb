require "lib/sorting/sort_the_fourth"

describe "Whether sort_the_fourth works" do 
	it "Should sort words alphabetically" do
		words = %w{apple monkey baseball floor jupiter}
		sort(words).should == words.sort
	end
	it "Should sort numbers" do
		numbers = [4, 7, 3, 10, 42, 18, 0]
		sort(numbers).should == numbers.sort
	end
	it 'Should bring the max value to the end of the array' do
		numbers = [4, 7, 3, 10, 42, 18, 0]
		bubble_up(numbers, numbers.length - 1).should == [4, 3, 7, 10, 18, 0, 42]
	end
	it 'Should bring the max value to the end of the array' do
		numbers = [4, 3, 7, 10, 18, 0, 42]
		bubble_up(numbers, numbers.length - 1).should == [3, 4, 7, 10, 0, 18, 42]
	end
	it 'Recursion should work' do
		recursion([4, 3, 7, 10, 18, 0, 42], 6).should == [0, 3, 4, 7, 10, 18, 42]
	end
	it '[] should work' do
		sort([]).should == [].sort
	end
	it 'Single worded arrays should work' do
		sort(['waffle']).should == ['waffle'].sort
	end
end