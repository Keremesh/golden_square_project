class Diary
  def initialize
    @entries = []
  end

  def add(entry) 
    @entries << entry
    
  # entry is an instance of DiaryEntry
    # Returns nothing
  end

  def all
    return @entries
  end

  def count_words
    return @entries.sum(&:count_words)  # refactoring of @entries.map do |entry|
                                        # entry.count_words
                                        # end.sum
    # &: means that the function outside of the brackets (sum) will go through each item in the entries list,
    # it will call on it the method (count_words) & it will add up all of the numbers
  end

  def reading_time(wpm) 
    fail "WPM must be positive." unless wpm.positive? 
    return (count_words / wpm.to_f).ceil
  end

  def find_best_entry_for_reading_time(wpm, minutes)
    # extracted to a private method during the refactoring stage
    return readable_entries(wpm, minutes).max_by(&:count_words)
  end

  private
  def readable_entries(wpm,minutes)
    return @entries.filter do |entry|
      entry.reading_time(wpm) <= minutes
    end
  end

#  pre refactoring the above code
#  def find_best_entry_for_reading_time(wpm, minutes)
#     readable_entries = @entries.filter do |entry|
#       entry.reading_time(wpm) <= minutes
#     end
#     sorted_by_longest = readable_entries.sort_by do |entry|
#       entry.count_words
#     end
#     sorted_by_longest.last
#   end
end