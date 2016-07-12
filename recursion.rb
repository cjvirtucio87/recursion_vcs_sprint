def factorial_r(num)
  return 1 if num == 1
  return num * factorial_r(num - 1)
end


def factorial_i(num)
  product = 1
  (1..num).each do |n|
    product *= n
  end
  product
end


def digit_sum_r(num)
  return num if num.to_s.length == 1

  num.to_s[0].to_i + digit_sum_r(num.to_s[1..-1].to_i)
end

def digit_sum_i(num)
  num.to_s.split('').map(&:to_i).reduce(&:+)
end

def palindrome_r(string)
  case string.length
  when 1
    return true
  when 2
    string[0] == string[1] ? true : false
  else
    string[0] == string[-1] ? palindrome_r(string[1..-2]) : false
  end
end

def palindrome_i(string)
  until string.length < 3
    if string[0] == string[-1]
      string = string[1..-2]
    else
      return false
    end
  end
  if string.length == 2
    return false if string[0] != string[1]
  end
  true
end

puts "Recursive: "
puts palindrome_r("aacbcaa")
puts palindrome_r("abcdef")
puts palindrome_r("aacbbcaa")
puts palindrome_r("aacbccaa")

puts ""

puts "Iterative: "
puts palindrome_i("aacbcaa")
puts palindrome_i("abcdef")
puts palindrome_i("aacbbcaa")
puts palindrome_i("aacbccaa")