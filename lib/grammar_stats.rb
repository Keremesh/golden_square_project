class GrammarStats
  def initialize
    @total_texts = 0
    @texts_passed = 0
  end

  def check(text)
    fail "Not a sentence." if text.empty?
    first_letter_uppercase = text[0] == text[0].upcase
    last_char_valid = [".", "!", "?"].include? text[-1]
    @total_texts += 1
    if first_letter_uppercase && last_char_valid
      @texts_passed += 1
      return true
    else 
      return false 
    end 
  end

  def percentage_good
    @texts_passed * 100 / @total_texts 
  end
end
