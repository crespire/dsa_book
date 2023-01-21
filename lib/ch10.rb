def countdown(input)
  return 'Not a number' unless input.is_a? Numeric

  if input.round.zero?
    puts 'Blast off!'
  else
    puts input
    countdown(input - 1)
  end
end

def factorial(number)
  return 1 if number <= 1

  number * factorial(number - 1)
end

=begin
  Q1: base case is `return if low > high`
  Q2: should recurse infinitely because base case is only `== 1` not `<= 1`
  Q3: `return if high <= low`
  Q4: See "print_nested_array"
=end

def print_nested_array(value)
  value.each do |x|
    if x.is_a? Array
      print_nested_array(x)
    else
      puts x
    end
  end
end
