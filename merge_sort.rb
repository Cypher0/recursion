def merge_sort(ary)
  return ary if ary.size <= 1
  a = []
  b = []
  ary.each_with_index do |val, ind|
    ind < (ary.length / 2) ? a << val : b << val
  end
  a = merge_sort(a)
  b = merge_sort(b)
  merge(a, b)
end

def merge(a, b)
  result = []
  until a.empty? || b.empty?
    if a.first <= b.first
      result << a.first
      a = a[(1..-1)]
    elsif b.first <= a.first
      result << b.first
      b = b[(1..-1)]
    end
  end
  until a.empty?
    result << a.first
    a = a[(1..-1)]
  end
  until b.empty?
    result << b.first
    b = b[(1..-1)]
  end
  result
end

puts merge_sort([56, 21, 11, 19, 86, 7, 42, 38])
