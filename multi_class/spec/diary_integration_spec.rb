require "diary"
require "diary_entry"

RSpec.describe "Integration" do
    it "comes back in the list of entries" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("Yesterday", "What a nice day")
      diary_entry_2 = DiaryEntry.new("Today", "It was sunny today")
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      expect(diary.all).to eq [diary_entry_1, diary_entry_2]
    end

    describe "word countring behaviour" do
      it "counts the words in all diary entries' contents" do
        diary = Diary.new
        diary_entry_1 = DiaryEntry.new("Yesterday", "What a nice day")
        diary_entry_2 = DiaryEntry.new("Today", "It was sunny today")
        diary.add(diary_entry_1)
        diary.add(diary_entry_2)
        expect(diary.count_words).to eq 8
      end
    end

    describe "reading time behaviour" do
      it "fails if the wpm is zero" do
        diary = Diary.new 
        diary_entry_1 = DiaryEntry.new("Yesterday", "What a nice day")
        diary.add(diary_entry_1)
        expect { diary.reading_time(0) }.to raise_error "WPM must be positive."
      end
      it "calculates the reading time for all entries " do
        diary = Diary.new
        diary_entry_1 = DiaryEntry.new("Yesterday", "What a nice day")
        diary_entry_2 = DiaryEntry.new("Today", "It was sunny today ok")
        diary.add(diary_entry_1)
        diary.add(diary_entry_2)
        expect(diary.reading_time(2)).to eq 5
      end
    end
    describe "best reading time entry behaviour" do
      it "returns the longest entry user can read in this time" do 
        diary = Diary.new
        best_entry = DiaryEntry.new("title", "one two")
        diary.add(DiaryEntry.new("title", "one"))
        diary.add(best_entry)
        diary.add(DiaryEntry.new("title", "one two three"))
        diary.add(DiaryEntry.new("title", "one two three four"))
        result = diary.find_best_entry_for_reading_time(2, 1)
        expect(result).to eq best_entry
      end
    end 
    
end