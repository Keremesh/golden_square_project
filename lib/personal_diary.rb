str = "I like mangoes, pears, apples and bananas"
def make_snippet(str)
  arr = str.split(" ")
  if arr.length < 5 
   return str
  else 
    return arr[0..4].join(" ") + "..."
  end
end

puts make_snippet(str)