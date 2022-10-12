# 1. Describe the Problem
# User wants to see an estimate of reading time
# bearing in mind user reads at 200 words per min
# 2. Design the Method Signature
def reading_time(words)
  joined = words.divmod(60).map(&:to_s).join(":")
  joined.length == 3 ? joined.insert(2, "0") : joined
end