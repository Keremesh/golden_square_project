require "diary_entry"

RSpec.describe DiaryEntry do
  it "constructs" do
    diary_entry = DiaryEntry.new("title", "contents")
    expect(diary_entry.title).to eq "title"
    expect(diary_entry.contents).to eq "contents"
  end

  describe "@count_words" do
    it "returns the number of words in the contents" do
      diary_entry = DiaryEntry.new("title", "contents contents contents")
      expect(diary_entry.count_words).to eq 3
    end
    it "returns 0 when contents is empty" do
      diary_entry = DiaryEntry.new("title", "")
      expect(diary_entry.count_words).to eq 0
    end
  end
  
  describe "@reading_time" do
    it "returns reading time" do
      diary_entry = DiaryEntry.new("title", "one " * 600)
      expect(diary_entry.reading_time(200)).to eq 3
    end
    it "fails" do
      diary_entry = DiaryEntry.new("title", "contents")
      expect { diary_entry.reading_time(0) }.to raise_error "Reading speed must be above 0"
    end
  end 


  describe "@reading_chunk" do
    it "with a text readable within the given minutes it returns the full contents" do
      diary_entry = DiaryEntry.new("title", "one two three")
      expect(diary_entry.reading_chunk(200, 1)).to eq "one two three"
    end
    it "with the contents unreadable within the time it returns the readable chunk" do
      diary_entry = DiaryEntry.new("title", "one two three")
      expect(diary_entry.reading_chunk(2, 1)).to eq "one two"
    end
    it "returns the next chunk, next time we are asked" do
      diary_entry = DiaryEntry.new("title", "one two three")
      diary_entry.reading_chunk(2, 1)
      expect(diary_entry.reading_chunk(2, 1)).to eq "three"
    end
    it "restarts after reading all the contents" do
      diary_entry = DiaryEntry.new("title", "one two three")
      diary_entry.reading_chunk(2, 1)
      diary_entry.reading_chunk(2, 1)
      expect(diary_entry.reading_chunk(2, 1)).to eq "one two"
    end
    it "finishes exactly on the end" do
      diary_entry = DiaryEntry.new("title", "one two three")
      diary_entry.reading_chunk(2, 1)
      diary_entry.reading_chunk(1, 1)
      expect(diary_entry.reading_chunk(2, 1)).to eq "one two"
    end
  end
end
