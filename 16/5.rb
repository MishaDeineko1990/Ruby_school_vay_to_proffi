# =========================
# 1. Yield
# ========================
puts "1."

def run_5_times
    5.times do
        yield
    end
end


run_5_times {puts"write something"}



# =========================
# 2.
# ========================
puts "2."

def run_while
    x=0
    while x<6 
        yield
        x=x+1
    end
end


run_while {puts"write something 2"}



# =========================
# 3.
# ========================
puts "3."

def run_while_3
    x=0
    while x<6 
        yield x, 55
        x=x+1
    end
end


run_while_3 {|i, v| puts"write something index #{i} varible #{v}"}