require 'count_words.rb'

RSpec.describe "count words in a string" do 
  it "counts the number of words in a string" do
    result = count_words("I like apples")
    expect(result).to eq 3
  end 
end 