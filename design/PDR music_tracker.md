# Music Tracker Class Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE

class MusicTracker
  def initialize # an empty array
  end

  def add(track) # track is a string
    # No return value
  end

  def list # list is an array
    # returns an array containing the tracks
  end
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLE

# 1 the list is empty
music_tracker = MusicTracker.new 
music_tracker.list => []

# 2 enter a track, resulting list contains the track
music_tracker = MusicTracker.new 
music_tracker.add("One")
music_tracker.list => ["One"]

# 3 adds multiple tracks
music_tracker = MusicTracker.new 
music_tracker.add("One")
music_tracker.add("Two")
music_tracker.list => ["One", "Two"]

# 4 fails if the input is not string
music_tracker = MusicTracker.new 
music_tracker.add(1) => fails with a message "Not a string."
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._


<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---


<!-- END GENERATED SECTION DO NOT EDIT -->