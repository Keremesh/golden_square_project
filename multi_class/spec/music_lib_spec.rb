require "music_library"

RSpec.describe MusicLibrary do
  context "initially" do
    it "is empty" do
      music_library = MusicLibrary.new
      expect(music_library.all).to eq []
    end

    it "responds to searches with an empty list" do
      music_library = MusicLibrary.new
      expect(music_library.search_by_title("ok")).to eq []
    end
  end
end
#   context "when we add a track" do
#     it "adds that track to the library" do
#      music_library = MusicLibrary.new
#     track = TRack.new("title", "contents")
#     music_library.add(track)
#     expect(music_library.all).to eq [track]
#   it "constructs" do
#     library = MusicLibrary.new
#   end
  
  # ...
# end