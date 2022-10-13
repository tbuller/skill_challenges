require 'diary_entry'

RSpec.describe DiaryEntry do
  it "1. counts the words within the book" do
    entry = DiaryEntry.new("Book", "Once upon a time")
    result = entry.count_words
    expect(result).to eq 4
  end
end    

