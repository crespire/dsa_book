def add_until_100(array)
  return 0 if array.empty?

  calc = add_until_100(array[1, array.length - 1])
  if array[0] + calc > 100
    calc
  else
    array[0] + calc
  end
end

def golomb(n, memo = {})
  return 1 if n == 1
  return memo[n] if memo.key?(n)

  memo[n] = 1 + golomb(n - golomb(golomb(n - 1, memo), memo), memo)
end

def unique_paths(rows, columns, memo = {})
  return 1 if rows == 1 || columns == 1
  return memo[[rows, columns]] if memo.key?([rows, columns])

  memo[[rows, columns]] = unique_paths(rows - 1, columns, memo) + unique_paths(rows, columns - 1, memo)
end
