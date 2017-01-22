def fibs(num)
  result = [0, 1]
  if num.zero?
    nil
  elsif num == 1
    [0]
  else
    (num - 2).times do
      result << result[-1] + result[-2]
    end
    result
  end
end

def fibs_rec(num, result = [0, 1])
  return result[0] if num == 1
  return result if num == 2
  result << result[-1] + result[-2]
  fibs_rec(num - 1, result)
end
