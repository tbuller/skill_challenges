require 'music_tracker'

RSpec.describe MusicTracker do
  it "1. prints each song in an array" do
    listed = MusicTracker.new
    result = listed.music_printer
    expect(result).to eq ""
  end
  it "2. adds music to the array" do
    listed = MusicTracker.new
    result = listed.music_adder("marseillaise")
    expect(result).to eq ["marseillaise"]
  end
  it "3. adds multiple songs to the array, and uses the music_printer method to return them" do
    listed = MusicTracker.new
    listed.music_adder("marseillaise")
    listed.music_adder("au clair de la lune")
    listed.music_adder("le petit bonhomme")
    result = listed.music_printer
    expect(result).to eq "marseillaise, au clair de la lune, le petit bonhomme"
  end  
end    