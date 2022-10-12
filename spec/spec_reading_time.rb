require 'reading_time'

RSpec.describe "reading_time method" do
  it "1. returns the amount of time taken to read a certain amount of words, formatted in minutes and seconds" do
    expect(reading_time("This is an example string which the user might need to read")).to eq "3 seconds"
  end
  it "2. returns the amount of time taken to read a certain amount of words, formatted in minutes and seconds" do
    expect(reading_time("this is a slightly longer string to test how different the outcome would look and how much time it would take the user to read")).to eq "7 seconds"
  end
  it "3. returns the amount of time taken to read a certain amount of words, formatted in minutes and seconds" do
    expect(reading_time("This really really shouldn't take a second")).to eq "2 seconds"
  end
end  
