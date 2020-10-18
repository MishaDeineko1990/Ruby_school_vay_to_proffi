input =File.open "output.txt", "r+"

something = ""

while (line = input.gets)
    something += line
    p line.chomp
end

p something.split("\n")