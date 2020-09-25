puts "give name methods"
met_name = gets.strip

send :define_method, met_name do
    puts "Hallo guy"
end

send met_name
