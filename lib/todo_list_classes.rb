# File: lib/todo_list.rb
class TodoList
    def initialize
      @incomplete_tasks = []
      @completed_tasks = []  
    end
  
    def add(todo) # todo is an instance of Todo
      todo.done? ? @completed_tasks.push(todo.task[0...-4]) : @incomplete_tasks.push(todo.task)  
      # Returns nothing
    end
  
    def incomplete
      @incomplete_tasks.each { |x| x }.join(", ")
    end
  
    def complete
      @completed_tasks.each { |x| x }.join(", ")
    end
  
    def give_up!
      @completed_tasks.concat(@incomplete_tasks)
      @incomplete_tasks.clear
    end
  end
  
  # File: lib/todo.rb
  class Todo
    def initialize(task) # task is a string
      @task = task
    end
  
    def task
      return @task
    end
  
    def mark_done!
      @task.insert(-1, "DONE")
    end
  
    def done?
      @task[-4..-1] == "DONE"
    end
  end