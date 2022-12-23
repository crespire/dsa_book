def first_non_repeating_letter(input)
  seen = Hash.new(nil)
  input.downcase.chars.each_with_index do |char, i|
    seen[char] = seen[char].nil? ? i : -1
  end

  res = nil
  seen.each_value do |v|
    if v >= 0
      res = v
      break
    end
  end

  res.nil? ? '' : input[res]
end
