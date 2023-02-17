# {Reading time} Method Design Recipe

## 1. Describe the Problem
_ Put or write the user story here. Add any clarifying notes you might have.

A user wants to manage their time by estimating reading time for text. 
The user can read 200 words a minute. 

## 2. Design the Method Signature
__Include the name of the method, its parameters, return value, and side effects.
_The signature of a method includes:
_The name of the method.
_What parameters it takes, their names and data types.
_What it returns and the data type of that value.
_Any other side effects it might have.

```ruby
reading_time = calculate_reading_time(text)
# * text is a string with words in it
# * reading_time is integer representing minutes
```

<!-- reading_time(words) = counts how many minutes it takes to read a text
minutes = reading_time(words)
minutes = float 
returns minutes in float
Potentially convert minutes into hours.  -->

3. Create Examples as Tests

_Make a list of examples of what the method will take and return.
``` ruby
# 1
calculate_reading_time("one") => 1

calculate_reading_time(TWO_HUNDRED_WORDS) => 1
calculate_reading_time(THREE_HUNDRED_WORDS) => 2
calculate_reading_time(FIVE_THOUSAND_WORDS) => 25
```

4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.