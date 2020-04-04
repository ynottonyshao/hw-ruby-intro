# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  result = 0
  arr.each {|x| result += x}
  result
end

def max_2_sum arr
  result = 0
  if arr.empty?
    result = 0
  elsif (arr.size == 1)
    result = arr[0]
  else
    arrsort = arr.sort
    result = arrsort[-2] + arrsort[-1]
  end
  result
end

def sum_to_n? arr, n
  arrcom = arr.combination(2)
  arrcom.each {|x| return true if x.sum == n}
  false
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  /^[^aeiou\W]/i.match(s)
  
  ####### https://stackoverflow.com/questions/18406509/using-regexp-to-check-whether-a-string-starts-with-a-consonant/40548762end
  # i => case insensitive
  # \W => non-letters
  # [^aeiou] => anything except a, e, i, o, u
  # first ^ => anything if for the first character of [^aeiou\W]
end

def binary_multiple_of_4? s
  /^(0|00|([01]+00))$/.match?(s)
end

# Part 3

class BookInStock
  
  # variable naming with @
  ####### https://stackoverflow.com/questions/14319347/variables-in-ruby-on-rails

  attr_accessor :isbn, :price
  def initialize(isbn, price)
    raise ArgumentError if isbn == '' || price <= 0
    @isbn = isbn
    @price = Float(price)
  end
  def price_as_string
    "$" + ('%.2f' % price).to_s
  end
end
