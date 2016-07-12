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
  sum = 0
  
  num.to_s.split('').map(&:to_i).reduce(&:+)
end

