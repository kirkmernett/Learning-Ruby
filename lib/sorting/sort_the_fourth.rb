def sort(array)
	recursion(array.clone, array.length - 1)
end

def recursion(array, i)
	bubble_up(array, i)
	recursion(array, i - 1) unless i <= 0
	array
end

#bubble_up brings the max value to the end of the array.
def bubble_up(array, last)
	i = 0
	while i < last
		if array[i] > array[i + 1]
			array[i], array[i + 1] = array[i + 1], array[i]
		end
		i += 1
	end
	array
end




#words = []
#puts 'Enter some words to be sorted.'
#puts 'Press enter/return after each word.'
#puts 'Leave blank to sort.'
#entry = gets.chomp

#while true
#	if entry != ''
#		words.push entry
#	end
#end

#puts sort words
#puts 'Sorted!'
