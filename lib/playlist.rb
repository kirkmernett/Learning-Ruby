def find_song filename
	#Searches for music files in this directory and adds them to an array
	matches = Dir["H:/Unsorted/HHDDVVDDBVD/iTunes/**/*#{filename}*.{mp3,ogg,m4a,wav,flac}"]
	if matches.length == 0
		puts 'No matches found'
		return ''
	end
	
	#Displays each of the file paths from the array, with a number attached for selection
	num = 1
	matches.each do |song|
		puts "#{num} #{song}"
		num += 1
	end
	
	matches
end

playlist = []

while true	
	puts 'Enter a filename to search'
	filename = gets.chomp
	matches = find_song filename
	
	#Asks the user to select a song from the list above, while weeding out invalid entries
	puts 'Enter the number of the song you\'d like to add, or leave blank to try another search.'
	while true
		selection = gets.chomp
		while selection.to_i <= 0 || selection.to_i > matches.length || selection.to_i.to_s != selection
			new_song = '' unless selection != ''
			break 		  unless selection != ''
			puts 'Please enter a valid number, or leave blank'
			selection = gets.chomp
		end
		new_song = matches[selection.to_i - 1]
	
		if new_song != ''
			playlist.push new_song
			puts 'Song added!'
		end
		puts 'Would you like to add another song from this selection? [Y/N]'
		break unless gets.chomp.downcase == 'y'
	end	
	puts 'Search again? [Y/N]'
	break unless gets.chomp.downcase == 'y'
end

exit unless playlist.length > 0

File.open "playlist.m3u", 'w' do |f|
	f.write(playlist.join("\n"))
end
puts 'Playlist saved!'