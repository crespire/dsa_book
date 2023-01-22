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

def paths_up(steps)
  # jump of 3 possible
  return 0 if steps.negative?
  return 1 if steps.zero? || steps == 1

  paths_up(steps - 1) + paths_up(steps - 2) + paths_up(steps - 3)
end

def anagrams_of(string)
  return [string] if string.length == 1

  collection = []
  sub_anagrams = anagrams_of(string[1, string.length - 1])

  sub_anagrams.each do |anagram|
    # we do this style of loop because we want to insert after the string as
    # well. For example, if string[0] is 'a' and sub_anagram is 'bc' we want to
    # also be able to get 'bca', which involves inserting at index 2 which is
    # the length of the string.
    (0..anagram.length).each do |i|
      copy = anagram.clone
      collection << copy.insert(i, string[0])
    end
  end

  collection
end
