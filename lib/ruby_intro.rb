# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # return arr.empty? ? 0 : arr.inject(:+)
  arr.inject(0, :+)
end

def max_2_sum arr
  # arr.empty? ? 0 : arr.sort.last(2).inject(:+)
  # refactor: uses the default value again
  arr.sort.last(2).inject(0, :+)
end

def sum_to_n? arr, n
 # use binary approach to reduce the iterations 
  left = 0
  right = arr.length - 1
  arr.sort!
  while left < right
    case arr[left] + arr[right] <=> n
    when 0
      return true
    when 1
      right -= 1
    when -1
      left += 1
    end
  end
  false
end


# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  !!(s[0] =~ /[^aeiou\W]/i)
end

def binary_multiple_of_4? s
  s =~ /^([01]*0)?0$/
end

# Part 3

# NB Should isbn be attr_reader given it should not change? 
class BookInStock
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    raise ArgumentError.new "ISBN must be non-empty string" unless
      isbn.is_a?(String) && !isbn.empty?
    raise ArgumentError.new "Price must be greather than 0" unless price > 0
    @isbn, @price  = isbn, price
  end

  def price_as_string
    %Q{$#{"%.2f" % @price}}
  end
end

