def make_snippet(str)
  str.split.length < 6 ? str : str.split.first(5).join(" ") + "..."
end