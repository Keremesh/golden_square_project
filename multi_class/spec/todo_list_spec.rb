require "todo_list"

RSpec.describe TodoList do
  it "returns a list of tasks that need to be done" do
    todo_list = TodoList.new
    todo_list.add("Eat")
    todo_list.add("Study")
    expect(todo_list.incomplete).to eq ["Eat", "Study"]
  end
  it "returns all completed tasks" do
    todo_list = TodoList.new
    todo_list.add("Done: Eat")
    todo_list.add("Study")
    expect(todo_list.complete).to eq ["Done: Eat"]
  end
  it "gives up" do
    todo_list = TodoList.new
    todo_list.add("Eat")
    todo_list.add("Study")
    expect(todo_list.give_up!).to eq ["Done: Eat", "Done: Study"]
  end
   
end 