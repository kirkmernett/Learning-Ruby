require "lib/playlist"

describe "Playlist tests" do
	it 'find_song should give this array back when given this keyword' do
		array = ["H:/Unsorted/HHDDVVDDBVD/iTunes/iTunes Music/Jonathan_Coulton__Portal__-_Still_Alive.mp3", "H:/Unsorted/HHDDVVDDBVD/iTunes/iTunes Music/l4d2gamerip/Left 4 Dead 2 GameRip/flu/jukebox/3 portal_still_alive.mp3", "H:/Unsorted/HHDDVVDDBVD/iTunes/iTunes Music/L4D2VA/Left 4 Dead 2 VA Soundtrack/Portal - Still Alive.mp3", "H:/Unsorted/HHDDVVDDBVD/iTunes/iTunes Music/NOT SORTED/Sonic Pinball Party/37_-_Can_Still_See_The_Light.mp3", "H:/Unsorted/HHDDVVDDBVD/iTunes/iTunes Music/Sonic 3 and Knuckles - Project Chaos/303 - Ross Kmet - Momentary Standstill (Azure Lake).mp3", "H:/Unsorted/HHDDVVDDBVD/iTunes/iTunes Music/NOT SORTED/Peace and Quiet/05 Time Stands Still.m4a"]
		find_song('still').should == array
	end
	it 'find_song should return '' if no matches are found' do
		find_song('abjhgosahebpidxhivubslo').should == ''
	end
end