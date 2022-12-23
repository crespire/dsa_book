##
# #1
# Write a function that returns the intersection of two arrays.
def array_intersection(arr1, arr2)
  intersection = []
  seen = Hash.new(false)
  arr1.each { |value| seen[value] = true }
  arr2.each { |value| intersection << value if seen[value] }
  intersection
end

##
# #4
# Write a function that returns the first non-duplicated character in a string.
def first_non_repeating_letter(input)
  seen = Hash.new(nil)
  input.downcase.chars.each_with_index { |char, i| seen[char] = seen[char].nil? ? i : -1 }

  res = nil
  seen.each_value do |v|
    if v >= 0
      res = v
      break
    end
  end

  res.nil? ? '' : input[res]
end
