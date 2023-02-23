require "music_tracker"

RSpec.describe MusicTracker do
  it "shows an empty list if there are no tracks" do
    music_tracker = MusicTracker.new 
    expect(music_tracker.list).to eq []
  end
  it "adds a track and shows the updated list" do
    music_tracker = MusicTracker.new 
    music_tracker.add("One")
    expect(music_tracker.list).to eq ["One"]
  end
  it "adds multiple tracks and shows the updated list" do
    music_tracker = MusicTracker.new 
    music_tracker.add("One")
    music_tracker.add("Two")
    expect(music_tracker.list).to eq ["One", "Two"]
  end
  it "fails if the input is not a string" do
    music_tracker = MusicTracker.new
    # music_tracker.add(7)
    expect { music_tracker.add(7) }.to raise_error "Not a string."
  end

end