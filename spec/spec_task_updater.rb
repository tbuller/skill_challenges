require 'task_updater'

RSpec.describe TaskUpdater do
  it "1. puts the contents of the initialized array" do
    listed = TaskUpdater.new
    result = listed.puts_todo
    expect(result).to eq ""
  end
  it "2. adds a string to the array, checks whether said string is in array" do
    listed = TaskUpdater.new
    listed.todo_adder("placeholder")
    listed.todo_adder("this")
    result = listed.puts_todo
    expect(result).to eq "placeholder, this"
  end  
  it "3. tells the user that they have completed the given task and removes it from the list" do
    listed = TaskUpdater.new
    listed.todo_adder("placeholder")
    listed.todo_adder("this")
    result = listed.todo_complete("placeholder")
    expect(result).to eq "placeholder has been completed"
  end
  it "4. removes the completed item from the list" do
    listed = TaskUpdater.new
    listed.todo_adder("placeholder")
    listed.todo_adder("this")
    listed.todo_complete("placeholder")
    result = listed.puts_todo
    expect(result).to eq "this"
  end
  it "5. test with more items added to the list" do
    listed = TaskUpdater.new
    listed.todo_adder("placeholder")
    listed.todo_adder("this")
    listed.todo_adder("walk dog")
    listed.todo_adder("dry laundry")
    listed.todo_adder("dry dishes")
    listed.todo_complete("placeholder")
    listed.todo_complete("dry dishes")
    result = listed.puts_todo
    expect(result).to eq "this, walk dog, dry laundry"
  end
  it "6. tells the user if the task was not in the list to start with" do
    listed = TaskUpdater.new
    listed.todo_adder("placeholder")
    listed.todo_adder("this")
    listed.todo_adder("walk dog")
    listed.todo_adder("dry laundry")
    listed.todo_adder("dry dishes")
    result = listed.todo_complete("walk cat")
    expect(result).to eq "selected task is not included in the todo list"
  end  
end    