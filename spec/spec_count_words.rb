require 'count_words'

RSpec.describe "count_words method" do
  it "1. Takes a string as an argument and returns the number of words in the string" do
    result = count_words("This is an example of a string")
    expect(result).to eq 7
  end
  it "2. Takes a string as an argument and returns the number of words in the string" do
    result = count_words("This is an example of a string and here are some more words")
    expect(result).to eq 13
  end
end    