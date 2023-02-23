require "music_library"
require "track"

RSpec.describe "Music Library Integration" do
  context "when we add a track to the library" do
    it "comes back in the list" do
      music_library = MusicLibrary.new
      track_1 = Track.new("title1", "artist1")
      track_2 = Track.new("title2", "artist2")
      music_library.add(track_1)
      music_library.add(track_2)
      expect(music_library.all).to eq [track_1, track_2]
    end
  end
  context "with some tracks added" do
    it "searches for those tracks by full title" do
      music_library = MusicLibrary.new
      track_1 = Track.new("title1", "artist1")
      track_2 = Track.new("title2", "artist2")
      music_library.add(track_1)
      music_library.add(track_2)
      result = music_library.search_by_title("title2")
      expect(result).to eq [track_2]
    end
    it "searches for those tracks by partial title" do
      music_library = MusicLibrary.new
      track_1 = Track.new("title1", "artist1")
      track_2 = Track.new("title2", "artist2")
      music_library.add(track_1)
      music_library.add(track_2)
      result = music_library.search_by_title("title2")
      expect(result).to eq [track_2]
    end
    context "where there are no tracks matching" do
      it "yields an empty list when searching" do
        music_library = MusicLibrary.new
        track_1 = Track.new("title1", "artist1")
        track_2 = Track.new("title2", "artist2")
        music_library.add(track_1)
        music_library.add(track_2)
        result = music_library.search_by_title("ok")
        expect(result).to eq []
      end
    end 
  end
end
  
  # ...
# end
#   it "gets all tracks" do
#     library = MusicLibrary.new
#     track_1 = Track.new("Carte Blanche", "Veracocha")
#     track_2 = Track.new("Synaesthesia", "The Thrillseekers")
#     library.add(track_1)
#     library.add(track_2)
#     expect(library.search_by_title("Carte")).to eq [track_1]
#   end
  
#   # ...
# end