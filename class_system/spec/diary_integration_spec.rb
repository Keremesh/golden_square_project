require "diary"
require "diaryentry"

RSpec.describe "Diary Intergration" do
  it "get all entries of the diary" do
    diary = Diary.new
    diary_entry_1 = DiaryEntry.new("Entry A", "Entry B")
    # diary_entry_2 = DiaryEntry.new("Entry C", "Entry D")
    # diary.add(diary_entry_1)
    # diary.add(diary_entry_1)
    # expect(d)
  end
end 

