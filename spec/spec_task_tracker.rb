require 'task_tracker'

RSpec.describe "task_tracker method" do
  it "1. checks if the string includes the word TODO" do
    result = task_tracker("TODO: make a list")
    expect(result).to eq "Includes TODO"
  end
  it "2. checks if the string includes the word TODO" do
    result = task_tracker("Need to get a haircut")
    expect(result).to eq "Does not include TODO"
  end
  it "3. checks if the string includes the word TODO" do
    result = task_tracker("add pet food to my TODO")
    expect(result).to eq "Includes TODO"
  end
  it "4. checks if the string includes the word TODO" do
    result = task_tracker("TODO: take washing out of machine")
    expect(result).to eq "Includes TODO"
  end
  it "5. checks if the string includes the word TODO" do
    result = task_tracker("I need to add that to my todo list")
    expect(result).to eq "Does not include TODO"
  end
end    