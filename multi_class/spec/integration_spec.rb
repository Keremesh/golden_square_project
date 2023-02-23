require "todo"
require "todo_list"

RSpec.describe "integration" do

  it "returns and empty list if there are no tasks" do
    todo_list = TodoList.new
    expect(todo_list.incomplete).to eq []
  end
  
  it "returns tasks that were added" do
    todo_list = TodoList.new
    task_1 = Todo.new("Buy some food")
    task_2 = Todo.new("Study")
    todo_list.add(task_1.task)
    todo_list.add(task_2.task)
    expect(todo_list.incomplete).to eq ["Buy some food", "Study"]
  end

  it "returns a list of completed tasks" do
    todo_list = TodoList.new
    task_1 = Todo.new("Buy some food")
    task_2 = Todo.new("Study")
    todo_list.add(task_1.mark_done)
    todo_list.add(task_2.task)
    expect(todo_list.complete).to eq ["Done: Buy some food"]
  end

  it "gives up = marks and tasks as completed" do
    todo_list = TodoList.new
    task_1 = Todo.new("Buy some food")
    task_2 = Todo.new("Study")
    todo_list.add(task_1.task)
    todo_list.add(task_2.task)
    expect(todo_list.give_up!).to eq ["Done: Buy some food", "Done: Study"]
  end
end