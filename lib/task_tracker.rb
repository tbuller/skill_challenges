def task_tracker(text)
  text.include?("TODO") ? "Includes TODO" : "Does not include TODO"
end