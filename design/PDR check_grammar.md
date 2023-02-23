# {Reading time} Method Design Recipe

## 1. Describe the Problem
_ Put or write the user story here. Add any clarifying notes you might have.

As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

## 2. Design the Method Signature
__Include the name of the method, its parameters, return value, and side effects.
_The signature of a method includes:
_The name of the method.
_What parameters it takes, their names and data types.
_What it returns and the data type of that value.
_Any other side effects it might have.

```ruby
is_correct = check_grammar(text) 
# * text is a string with words in it
# * is_correct is a boolean depending on whether it checks out
```

3. Create Examples as Tests

_Make a list of examples of what the method will take and return.
``` ruby
# 1
check_grammar("") => fail "Not a sentence"
check_grammar("Okay then.") => true
check_grammar("Okay then") => false
check_grammar("okay then") => false
check_grammar("OKAY then.") => true
check_grammar("Okay then!") => true
check_grammar("Okay then?") => true
check_grammar("Okay then,") => false
```

4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.