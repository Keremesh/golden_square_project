require "check_grammar"

RSpec.describe "check_grammar method" do
  context "given an empty string it fails" do 
    it "fails" do
      expect { check_grammar("")}.to raise_error "Not a sentence."
    end
  end
  context "given a sentence with a capital letter and full stop" do
    it "returns true" do
      result = check_grammar("Ok then.")
      expect(result).to eq true
    end
  end
  context "given a sentence without a capital letter" do
    it "returns false" do
      result = check_grammar("ok then.")
      expect(result).to eq false
    end
  end
  context "given a sentence without a full stop" do
    it "returns false" do
      result = check_grammar("Ok then")
      expect(result).to eq false
    end
  end
  context "given a sentence without neither a capital letter or full stop" do
    it "returns false" do
      result = check_grammar("ok then")
      expect(result).to eq false
    end
  end
  context "given a correct sentence with an ! at the end" do
    it "returns true" do
      result = check_grammar("OK then!")
      expect(result).to eq true
    end
  end
  context "given a correct sentence with a ? at the end" do
    it "returns true" do
      result = check_grammar("OK then?")
      expect(result).to eq true
    end
  end
  context "given a correct sentence with a comma at the end" do
    it "returns false" do
      result = check_grammar("OK then,")
      expect(result).to eq false
    end
  end
end