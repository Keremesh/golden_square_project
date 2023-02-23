require "todo"

RSpec.describe Todo do
  it "constructs" do
    todo = Todo.new("Study")
    expect(todo.task).to eq "Study"
  end
  it "marks tasks done" do
    task = Todo.new("Buy food")
    expect(task.mark_done).to eq "Done: Buy food"
  end
  it "returns true if the task is done" do
    task = Todo.new("Buy food")
    task.task
    task.mark_done
    expect(task.done?).to eq true
  end  
end
    