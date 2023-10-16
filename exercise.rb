class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # TODO: Implement this method
    str = str.split(' ')
    regex = /[[:punct:]]/
    for i in 0...str.length
      punc = ""
      if str[i].match(regex)
        punc = str[i][-1]
      end
      if str[i].length > 4
        if str[i][0] == str[i][0].upcase
          str[i] = "Marklar"
        else 
          str[i] = "marklar" 
        end
      end
      str[i] += punc
    end
    str = str.join(" ")
    str
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method
    first, second = 1, 1
    even = 0
    for i in 2...nth
      sum = first + second
      if sum % 2 == 0
        even += sum
      end
      first, second = second, sum
    end
    even
  end

end
