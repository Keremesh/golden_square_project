require 'todo_class'

RSpec.describe TodoList do
  it "given no tasks, it has an empty list" do
    todo_list = TodoList.new
    expect(todo_list.list).to eq []
  end

  it 'adds a task to a list and shows the resulting list' do
    todo_list = TodoList.new
     todo_list.add('Walk the dog')
     expect(todo_list.list).to eq ["Walk the dog"]
  end

  it "adds multiple tasks and shows the resulting list" do
    todo_list = TodoList.new
    todo_list.add('Walk the dog')
    todo_list.add('Wash the car')
    expect(todo_list.list).to eq ["Walk the dog", "Wash the car"]
  end

  it 'completes a task and removes task from the list' do
    todo_list = TodoList.new
    todo_list.add('Walk the dog')
    todo_list.add('Wash the car')
    todo_list.complete("Wash the car")
    expect(todo_list.list).to eq ["Walk the dog"]
  end

  it "fails when tries to complete a non existent task" do
    todo_list = TodoList.new
    todo_list.add('Walk the dog')
    expect { todo_list.complete("Wash the lamp") }.to raise_error "No such task."  
  end
end
