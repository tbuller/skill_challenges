require 'planner'

RSpec.describe "DiaryEntry methods" do
  it "1. stores an entry's title" do
    ent = DiaryEntry.new("entry1", "dear diary")
    result = ent.title
    expect(result).to eq "entry1"
  end
  it "2. stores an entry's contents" do
    ent = DiaryEntry.new("entry1", "dear diary")
    result = ent.content
    expect(result).to eq "dear diary"
  end
  it "3. returns a word count of the contents" do
    ent = DiaryEntry.new("entry1", "dear diary here are some more words")
    result = ent.word_count
    expect(result).to eq 7
  end  
end

RSpec.describe "Diary methods" do
  it "1. adds entries and reads them" do
    dr = Diary.new
    ent = DiaryEntry.new("title title", "il etait un petit homme")
    dr.add_entry(ent)
    ent2 = DiaryEntry.new("more imaginative title", "il etait un petit homme et cest tout")
    dr.add_entry(ent2)
    result = dr.read
    expect(result).to eq "title title, more imaginative title"
  end
  it "2. adds contacts and reads numbers" do
    dr = Diary.new
    person = Contact.new("Tim", "0800")
    person2 = Contact.new("Tom", "0900")
    dr.add_contact(person)
    dr.add_contact(person2)
    result = dr.read_numbers
    expect(result).to eq "Tim: 0800, Tom: 0900"
  end
  it "3. adds contacts and reads numbers" do
    dr = Diary.new
    person = Contact.new("Tim", "0800")
    person2 = Contact.new("Tom", "0900")
    person3 = Contact.new("Terry", "0900 0400")
    person4 = Contact.new("Tamsin", "0800 5678")
    dr.add_contact(person)
    dr.add_contact(person2)
    dr.add_contact(person3)
    dr.add_contact(person4)
    result = dr.read_numbers
    expect(result).to eq "Tim: 0800, Tom: 0900, Terry: 0900 0400, Tamsin: 0800 5678"
  end  
  it "4. selects the most appropriate entry given the reading time" do
    dr = Diary.new
    ent = DiaryEntry.new("title", "a few words to start off with")
    ent2 = DiaryEntry.new("title2", "a few words to start off with, and now a longer string")
    ent3 = DiaryEntry.new("title3", "a few words to start off with let's have a longer one this time by including many more words, hopefully the reader has a lot of time to read this one")
    ent4 = DiaryEntry.new("title4", "a few words to start off with il etait une fois dans le monde des douze il y avait douze classes avec des sorts different pout saffronter")
    ent5 = DiaryEntry.new("title5", "a few words to start off with, a more medium sized one this time")
    dr.add_entry(ent)
    dr.add_entry(ent2)
    dr.add_entry(ent3)
    dr.add_entry(ent4)
    dr.add_entry(ent5)
    result = dr.most_appropriate(8, 2)
    expect(result).to eq "title5"
  end
  it "5. selects the most appropriate entry given the reading time" do
    dr = Diary.new
    ent = DiaryEntry.new("title", "a few words to start off with")
    ent2 = DiaryEntry.new("title2", "a few words to start off with, and now a longer string")
    ent3 = DiaryEntry.new("title3", "a few words to start off with let's have a longer one this time by including many more words, hopefully the reader has a lot of time to read this one")
    ent4 = DiaryEntry.new("title4", "a few words to start off with il etait une fois dans le monde des douze il y avait douze classes avec des sorts different pout saffronter")
    ent5 = DiaryEntry.new("title5", "a few words to start off with, a more medium sized one this time")
    dr.add_entry(ent)
    dr.add_entry(ent2)
    dr.add_entry(ent3)
    dr.add_entry(ent4)
    dr.add_entry(ent5)
    result = dr.most_appropriate(4, 2)
    expect(result).to eq "title"
  end

end 

RSpec.describe "TodoList methods" do
  it "1. returns all todo items" do
    tdl = TodoList.new
    td = Todo.new("clean dishes")
    td2 = Todo.new("clean clothes")
    td3 = Todo.new("walk dog")
    tdl.add(td)
    tdl.add(td2)
    tdl.add(td3)
    result = tdl.tasks
    expect(result).to eq "clean dishes, clean clothes, walk dog"
  end
end    