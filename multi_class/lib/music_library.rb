# require "./track.rb"
class MusicLibrary
  def initialize
    @tracks = []  
  end

  def add(track) 
    @tracks << track

  end

  def all
    return @tracks
  end
  
  def search_by_title(keyword) 
    @tracks.select do |track|
      track.title.include?(keyword) 
    end
  end
end

# library1 = MusicLibrary.new
#       track_1 = Track.new("title1", "artist1")
#       track_1.format

#       library1.add(track_1)
#       puts library1.all
#       puts library1
