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
# #2
# Write a function that accepts a string and returns the first duplicate character it finds.
# Assume there is only one pair of duplicate characters in a string.
def first_repeating_letter(input)
  seen = Hash.new(nil)
  result = nil
  input.downcase.chars.each_with_index do |char, i|
    if seen[char]
      result = i
      break
    end

    seen[char] = -1
  end

  result.nil? ? '' : input[result]
end

##
# #3
# Write a function that accepts a string that contains all the leters of the alphabet
# except one, and returns the missing letter.
def missing_letter(input)
  seen = {}
  ('a'..'z').each { |letter| seen[letter] = false }
  input.downcase.chars.each { |char| seen[char] = true }
  result = nil
  seen.each { |k, v| result = k unless v }
  result.nil? ? '' : result
end

##
# #4
# Write a function that returns the first non-duplicated character in a string.
def first_non_repeating_letter(input)
  seen = Hash.new(nil)
  input.downcase.chars.each_with_index do |char, i|
    seen[char] = seen[char].nil? ? i : -1
  end

  result = nil
  seen.each_value do |v|
    if v >= 0
      result = v
      break
    end
  end

  result.nil? ? '' : input[result]
end
