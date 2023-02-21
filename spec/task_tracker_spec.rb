require "task_tracker"

RSpec.describe "keep track of tasks" do
  it "returns true" do
    result = task_tracker("Hello there my name is Kera, task is #TODO")
    expect(result).to eq true
  end
  it "returns false" do
   result = task_tracker("Hello there my name is Kera")
   expect(result).to eq false
  end
  it "returns false" do
   result = task_tracker("Hello there my name is Kera, task is #TODOTODO")
   expect(result).to eq false
  end

end