{{PROBLEM}} Method Design Recipe
1. Describe the Problem
As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.

2. Design the Method Signature
Include the name of the method, its parameters, return value, and side effects.

```ruby
task_tracker(text)
text is a string ("")
the output is a boolean
the method will check if the text includes the string #TODO
No side-effects
```

3. Create Examples as Tests
Make a list of examples of what the method will take and return.

# EXAMPLE

task_tracker("Hello there my name is Kera") => false
task_tracker("Hello there my name is Kera, task is #TODO") => true
#task_tracker("Hello there my name is Kera, task is #TODOTODO") => false

Encode each example as a test. You can add to the above list as you go.

4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.

#   if word.include?("#TODO")
#     return true
#   else 
#     return false
#   end
#end

