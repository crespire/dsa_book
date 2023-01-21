def double_array!(arr, index = 0)
  return if index > arr.length - 1

  arr[index] *= 2
  double_array!(arr, index + 1)
end

def sum_array(array)
  return array[0] if array.length == 1

  array[0] + sum_array(array[1, array.length - 1])
end

def reverse_string(string)
  return string[0] if string.length == 1

  reverse_string(string[1, string.length - 1]) + string[0]
end

def count_x(string)
  return 0 if string.empty?

  if string[0].downcase == 'x'
    1 + count_x(string[1, string.length - 1])
  else
    count_x(string[1, string.length - 1])
  end
end
