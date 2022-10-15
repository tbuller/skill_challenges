require 'todo_list_classes'

RSpec.describe "TodoList methods" do
  it "1. adds an item to incomplete tasks" do
    list1 = TodoList.new
    task1 = Todo.new("wash car")
    list1.add(task1)
    result = list1.incomplete
    expect(result).to eq "wash car"
  end
  it "2. adds an item to completed tasks" do
    list1 = TodoList.new
    task1 = Todo.new("take dog for a walk")
    task1.mark_done!
    list1.add(task1)
    result = list1.complete
    expect(result).to eq "take dog for a walk"
  end
  it "3. adds multiple items to completed tasks" do
    list1 = TodoList.new
    task1 = Todo.new("take dog for a walk")
    task1.mark_done!
    list1.add(task1)
    task2 = Todo.new("trim hedges")
    task2.mark_done!
    list1.add(task2)
    task3 = Todo.new("take out the bins")
    task3.mark_done!
    list1.add(task3)
    result = list1.complete
    expect(result).to eq "take dog for a walk, trim hedges, take out the bins"
  end
  it "4. adds all of the todos to completed, removing from incomplete" do
    list1 = TodoList.new
    task1 = Todo.new("take dog for a walk")
    list1.add(task1)
    task2 = Todo.new("trim hedges")
    list1.add(task2)
    task3 = Todo.new("take out the bins")
    list1.add(task3)
    list1.give_up!
    result = list1.incomplete
    expect(result).to eq ""
  end
  it "5. adds all of the todos to completed, removing from incomplete" do
    list1 = TodoList.new
    task1 = Todo.new("clean")
    list1.add(task1)
    task2 = Todo.new("wash")
    list1.add(task2)
    task3 = Todo.new("scrub")
    task3.mark_done!
    list1.add(task3)
    list1.give_up!
    result = list1.complete
    expect(result).to eq "scrub, clean, wash"
  end  
end    

RSpec.describe "Todo methods" do
  it "1. returns task added" do
    td = Todo.new("wash")
    result = td.task
    expect(result).to eq "wash"
  end
  it "2. marks the task as done" do
    td = Todo.new("washing")
    td.mark_done!
    result = td.done?
    expect(result).to eq true
  end
end