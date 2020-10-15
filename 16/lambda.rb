say_hi = lambda do |x|
    p "Hi #{x}"
end

say_by = lambda do |x|
    p "By #{x}"
end

week = [say_hi, say_hi, say_hi, say_hi, say_hi, say_by, say_by]

week.each_with_index do |v, i|
    v.call (i+1)
end