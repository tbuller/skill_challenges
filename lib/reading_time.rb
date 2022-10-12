# 1. Describe the Problem
# User wants to see an estimate of reading time
# bearing in mind user reads at 200 words per min
# 2. Design the Method Signature
def reading_time(text)
  "#{(((text.split.count).to_f / 200) * 60).floor} seconds"
end