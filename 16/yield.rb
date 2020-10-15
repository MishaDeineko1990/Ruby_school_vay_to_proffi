class Run
    def self.run_5_times
        x = 0 
        while x < 5
            yield x
            x += 1
        end
    end
end

Run.run_5_times do |x|

    x2 = x*10

    p "something #{x2}"

end

# Визиваємо статичний run_5_times ст-11
# отримуємо х перемінну з ст-5 в ст-11, 
# проводимо дію над перемінною ст-13 
# передає в середину метода ст-5 чере yeld останню строчку cт-15 з блоку виклику