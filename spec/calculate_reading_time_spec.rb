# require 'calculate_reading_time'

# RSpec.describe "count how long it takes to read a piece of text" do
#   it "fails" do
#     result = calculate_reading_time(20)
#     expect { result }.to raise_error "Invalid value"
#   end

#   context "given an empty string" do
#     it "returns zero" do
#       result = calculate_reading_time("")
#       expect(result).to eq 0
#     end
#   end

#   context "given a text under 200 words" do
#     it "returns one" do
#       result = calculate_reading_time("one two") do
#       expect(result).to eq 1
#     end
#   end

#   context "given a text of 200 words" do
#     it "returns one" do
#     result = calculate_reading_time("one " * 200)
#     expect(result).to eq 1
#     end
#   end
#   context "given a text of 300 words" do
#     it "returns two" do
#     result = calculate_reading_time("one " * 300)
#     expect(result).to eq 2
#     end
#   end
#   context "given a text of 5000 words" do
#     it "returns twenty five" do
#     result = calculate_reading_time("one " * 5000)
#     expect(result).to eq 25
#     end
#   end
# end
# end