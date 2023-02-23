require "personal_diary"

RSpec.describe "make_snippet method" do
  it "returns string if there are 4 words or less" do
    result = make_snippet("hello I like mangoes")
    expect(result).to eq "hello I like mangoes"
  end
  it "if there are five words or more, returns the first five words and '...'" do
    result = make_snippet("I like mangoes, pears, apples and bananas")
    expect(result).to eq "I like mangoes, pears, apples..."
  end 
end
