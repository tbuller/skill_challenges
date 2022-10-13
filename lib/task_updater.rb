class TaskUpdater
  def initialize
    @todo = []
  end
  
  def puts_todo
    @todo.each { |x| puts x }.join(", ")  
  end

  def todo_adder(text)
    @todo.push(text)
  end  

  def todo_complete(task)
    if @todo.include?(task)
      @todo.delete(task)
      "#{task} has been completed"
    else
      "selected task is not included in the todo list"  
    end  
  end  
end    
