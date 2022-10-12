require 'reading_time'

RSpec.describe "reading_time method" do
  it "1. returns the amount of time taken to read a certain amount of words, formatted in minute and seconds" do
    expect(reading_time(240)).to eq "4:00"
  end
end  

RSpec.describe "reading_time method" do
  it "2. returns the amount of time taken to read a certain amount of words, formatted in minute and seconds" do
    expect(reading_time(115)).to eq "1:55"
  end
end

RSpec.describe "reading_time method" do
  it "3. returns the amount of time taken to read a certain amount of words, formatted in minute and seconds" do
    expect(reading_time(376)).to eq "6:16"
  end
end    

RSpec.describe "reading_time method" do
it "3. returns the amount of time taken to read a certain amount of words, formatted in minute and seconds" do
  expect(reading_time(61)).to eq "1:01"
end
end