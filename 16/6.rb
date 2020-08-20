# =====================
# 1. Liambda
# =====================
puts "1."

x = lambda do |x|
    puts "Write #{x}"
end

x.call ("robin")

# =====================
# 2. 
# =====================
puts "2."

sub_10 = lambda do |x|
    puts "#{x-10}"
end
sub_10.call (100)