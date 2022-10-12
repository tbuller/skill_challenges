require 'make_snippet'

RSpec.describe "make_snippet method" do
  it "1. returns the string unchanged if the words are fewer than or equal to 5" do
    result = make_snippet("Not many words")
    expect(result).to eq "Not many words"
  end
  it "2. returns the string up to a maximum of 5 words followed by three dots" do
    result = make_snippet("Not many words but here are more")
    expect(result).to eq "Not many words but here..."
  end
end    
    