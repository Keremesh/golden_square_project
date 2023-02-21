require "grammar_stats"

RSpec.describe GrammarStats do
    grammar_stats = GrammarStats.new
  it "given and empty string it fails" do
    expect { grammar_stats.check("")}.to raise_error "Not a sentence."
  end
  describe "@check(text)" do
    context "given a sentence with a capital letter and full stop" do
      it "returns true" do
        result = grammar_stats.check("Ok then.")
        expect(result).to eq true
      end
    end
  end
    context "given a sentence without a capital letter" do
      it "returns false" do
        result = grammar_stats.check("ok then.")
        expect(result).to eq false
      end
    end
    context "given a sentence without a full stop" do
      it "returns false" do
        result = grammar_stats.check("Ok then")
        expect(result).to eq false
      end
    end
    context "given a sentence without neither a capital letter or full stop" do
      it "returns false" do
        result = grammar_stats.check("ok then")
        expect(result).to eq false
      end
    end
    context "given a correct sentence with an ! at the end" do
      it "returns true" do
        result = grammar_stats.check("OK then!")
        expect(result).to eq true
      end
    end
    context "given a correct sentence with a ? at the end" do
      it "returns true" do
        result = grammar_stats.check("OK then?")
        expect(result).to eq true
      end
    end
  describe "@percentage_good" do
    it "returns as an integer the percentage of texts checked so far that passed" do
      grammar_stats.check("OK then?")
      grammar_stats.check("ok then.")
      grammar_stats.check("ok then")
      grammar_stats.check("Ok then!")
      result = grammar_stats.percentage_good
      expect(result).to eq 50
    end
  end
end
    
    