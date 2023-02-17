def calculate_reading_time(text)
  fail "Invalid value" unless text.is_a?(String)
  words = text.split(" ")
  return (words.length / 200.to_f).ceil
end