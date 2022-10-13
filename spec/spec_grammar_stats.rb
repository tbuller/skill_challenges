require 'grammar_stats'

RSpec.describe GrammarStats do
  it "1. checks whether the sentence starts and ends with a capital letter" do
    sent = GrammarStats.new
    result = sent.check("This should pass.")
    expect(result).to eq true
  end
  it "2. checks whether the sentence starts and ends with a capital letter" do
    sent = GrammarStats.new
    result = sent.check("this shouldn't pass.")
    expect(result).to eq false
  end
  it "3. checks whether the percentage is correct" do
    sent = GrammarStats.new
    sent.check("This.")
    result2 = sent.percentage_good
    expect(result2).to eq 100
  end
  it "4. checks whether the percentage is correct with multiple values" do
    sent = GrammarStats.new
    sent.check("This.")
    sent.check("This")
    sent.check("this.")
    sent.check("This is.")
    sent.check("This..")
    result2 = sent.percentage_good
    expect(result2).to eq 60
  end
end    