# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0
  for i in 0..arr.length()
    sum += i
  end
  return sum
end

def max_2_sum arr
  # YOUR CODE HERE
  result = 0
  
  if arr.length() == 0
    return 0
  elsif arr.length() == 1
    return arr.last
  end
  
  arr = arr.sort
  result = result + arr.last
  arr.pop
  result = result + arr.last

  return result
  
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length() == 0
    return false
  end
  
  for i in 0...arr.length() - 1
    for j in i+1...arr.length()
      puts i,j
      if arr[i] + arr[j] == n
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if ['A', 'E', 'I', 'O', 'U', 'a', 'e', 'i', 'o', 'u'].include? s[0]
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  for i in 0...s.length()
    if !['0', '1'].include? s[i]
      return false
    end
  end
  
  binary = s.to_i(2)
 
  return binary%4 == 0
  
end

# Part 3

class BookInStock
# YOUR CODE HERE
# ISBN (string)
# price (float)
# method: price_as_string
  def initialize(isbn, price)
    if isbn.is_a? String and isbn != ''
      @isbn = isbn
    else
      raise ArgumentError
    end

    if price.is_a? Float and price > 0
      @price = price
    else
      raise ArgumentError
    end
  end

  def price_as_string
    return '$' + @price.round(2).to_s
  end
  
end

#puts sum([1,2,3])
#puts hello('Nahyun')
#puts starts_with_consonant?('ai')
#puts max_2_sum([2,2])
#puts sum_to_n?([1,2,1], 2)
#puts binary_multiple_of_4?('11001')

book =  BookInStock.new("1111", 20.288)

puts book.price_as_string
