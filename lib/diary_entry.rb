class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title
    @contents = contents
    @furthest_word_read = 0
  end

  def title
    @title
  end

  def contents
    @contents
  end

  def count_words
    words.length
  end

  def reading_time(wpm)
    fail "Reading speed must be above 0" unless wpm.positive? 
    reading_time = (count_words / wpm.to_f).ceil
  end

  def reading_chunk(wpm, minutes) 
    words_read = wpm * minutes
    start_from = @furthest_word_read
    end_at = @furthest_word_read + words_read
    word_list = words[start_from, end_at]
    if end_at >= count_words
      @furthest_word_read = 0 
    else 
      @furthest_word_read = end_at
    end 
    word_list.join(" ")
  end

  private 

  def words
    @contents.split(" ")
  end
end