class MusicTracker
def initialize
  @tracks = []
end

def list
  @tracks
end

def add(track)
  fail "Not a string." unless track.is_a?(String)
  @tracks << track
end
end