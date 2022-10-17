class Diary
  def initialize
    @entries = []
    @contents = []
    @contacts = []
    @numbers = []
  end

  def add_entry(entry)
    @entries.push(entry.title)
    @contents.push(entry.content)
  end 

  def read
    @entries.map { |ent| ent }.join(", ")
  end

  def add_contact(contact)
    @contacts.push(contact.name)
    @numbers.push(contact.number)
  end  

  def read_numbers
    @contacts.map { |cont| "#{cont}: #{@numbers[@contacts.index(cont)]}" }.join(", ")
  end  
  
  def most_appropriate(minutes, wpm)
    appropriate_diffs = @contents.map { |cont| (minutes * wpm) - cont.split.count }.map { |diff| diff > -1 ? diff : 100 }
    @entries[appropriate_diffs.index(appropriate_diffs.min)]
  end
end

class DiaryEntry
  def initialize(title, content)
    @title = title
    @content = content
  end

  def title
    return @title
  end
  
  def content
    return @content
  end
  
  def word_count
    @content.split.count
  end
end

class Contact
  def initialize(name, number)
    @name = name
    @number = number
  end
  
  def name
    return @name
  end
  
  def number
    return @number
  end
end    

class TodoList
  def initialize
    @list = []
  end

  def add(item)
    @list.push(item.task)
  end  
  
  def tasks
    @list.map { |t| t }.join(", ")
  end
end

class Todo
  def initialize(task)
    @task = task
  end
  
  def task
    return @task
  end
end    
  
  