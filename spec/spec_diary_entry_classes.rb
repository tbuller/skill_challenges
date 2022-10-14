require 'diary_entry_classes'

RSpec.describe "Diary class add method" do
  it "1. adds the input string to the end of the contents list" do
    diary = Diary.new
    dr = DiaryEntry.new("entry 1", "once upon a time")
    diary.add(dr)
    dr2 = DiaryEntry.new("entry 2", "once upon a time")
    diary.add(dr2)
    result = diary.all
    expect(result).to eq "entry 1, entry 2"
  end
  it "2. returns the amount of words" do
    diary = Diary.new
    dr = DiaryEntry.new("entry 1", "once upon a time")
    diary.add(dr)
    dr2 = DiaryEntry.new("entry 2", "once upon a time")
    diary.add(dr2)
    result = diary.count_words
    expect(result).to eq 8
  end
  it "3. returns the reading time" do
    diary = Diary.new
    dr = DiaryEntry.new("title", "there once was a wolf")
    diary.add(dr)
    dr2 = DiaryEntry.new("title2", "there once was the little red riding hood")
    diary.add(dr2)
    result = diary.reading_time(2)
    expect(result).to eq 6
  end
  it "4. returns the story that the user could read in the allocated time" do
    diary = Diary.new
    dr = DiaryEntry.new("title", "there once was a wolf")
    diary.add(dr)
    dr2 = DiaryEntry.new("title2", "there once was the little red riding hood")
    diary.add(dr2)
    dr3 = DiaryEntry.new("title3", "il etait une fois, un petit garcon, qui ne voulait pas manger son diner")
    diary.add(dr3)
    result = diary.find_best_entry_for_reading_time(4, 3)
    expect(result).to eq "title2"
  end
  it "5. returns the story that the user could read in the allocated time" do
    diary = Diary.new
    dr = DiaryEntry.new("title", "there once was a wolf")
    diary.add(dr)
    dr2 = DiaryEntry.new("title2", "there once was the little red riding hood")
    diary.add(dr2)
    dr3 = DiaryEntry.new("title3", "il etait une fois, un petit garcon, qui ne voulait pas manger son diner")
    diary.add(dr3)
    dr4 = DiaryEntry.new("title4", "il etait une fois, un petit garcon, qui ne voulait pas manger son diner, et puis ses parents ont du trouver de la nourriture qu'il aimait mieux")
    diary.add(dr4)
    dr5 = DiaryEntry.new("title5", "once upon a time in a kingdom far, far away lived a king who did not like ogres or donkeys. But eventually he came around and realised the errors of his ways")
    diary.add(dr5)
    dr6 = DiaryEntry.new("title6", "this is a medium length story; hopefully not as long as the longest")
    diary.add(dr6)
    result = diary.find_best_entry_for_reading_time(5, 20)
    expect(result).to eq "title5"
  end
end    
    