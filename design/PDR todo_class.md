# Todo Class Design Recipe

## 1. Describe the Problem

User story 1:
As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

User story 2:
As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

## 2. Design the Class Interface

```ruby
# EXAMPLE

class TodoList
  def initialize # name is a string
    @todo = []
    @completed = []
  end

  def add(task) # task is a string representing an instruction
    # Returns nothing
  end

  def list 
    # Returns a list of the tasks added as strings

  def complete(task) # task is a string representing a task to mark complete
    # Returns nothing
    # Fails if the task is not in the list
  end
end
```

## 3. Create Examples as Tests

Make a list of examples of how the class will behave in different situations.

```ruby
# EXAMPLE

# 1 shows empty list
todo_list = TodoList.new
todo_list.list => []

# 2 adds task to alist and shows resulting list
todo_list = TodoList.new
todo_list.add('Walk the dog')
todo_list.list => ["Walk the dog"]

# 3 adds multiple tasks and show resulting list
todo_list = TodoList.new
todo_list.add('Walk the dog')
todo_list.add('Wash the car')
todo_list.list => ["Walk the dog", "Wash the car"]

# 4 completes task and removes task from the list
todo_list = TodoList.new
todo_list.add('Walk the dog')
todo_list.add('Wash the car')
todo_list.complete("Wash the car")
todo_list.list => ["Walk the dog"]

# 5 fails when tries to complete a non-existent task 
todo_list = TodoList.new
todo_list.add('Walk the dog')
todo_list.complete("Wash the lamp") => fails with "No such task."

## 4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.
