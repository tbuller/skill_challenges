require 'improve_grammar'

RSpec.describe "improve_grammar method" do
  it "1. tells the user if their punctuation is wrong, either with capitalisation or lack of a full stop" do
    expect(improve_grammar("This won't pass")).to eq "Please check your grammar!"
  end
  it "2. tells the user if their punctuation is wrong, either with capitalisation or lack of a full stop" do
    expect(improve_grammar("Correct grammar.")).to eq "Well done you have good grammar here!"
  end
  it "3. tells the user if their punctuation is wrong, either with capitalisation or lack of a full stop" do
    expect(improve_grammar("Let's see if this passes.")).to eq "Well done you have good grammar here!"
  end
  it "4. tells the user if their punctuation is wrong, either with capitalisation or lack of a full stop" do
    expect(improve_grammar("This is lacking a full stop")).to eq "Please check your grammar!"
  end
  it "5. tells the user if their punctuation is wrong, either with capitalisation or lack of a full stop" do
    expect(improve_grammar("this has neither of the requirements")).to eq "Please check your grammar!"
  end
end    