def improve_grammar(text)
  text[0].upcase != text[0] || text[-1] != "." ? "Please check your grammar!" : "Well done you have good grammar here!"
end