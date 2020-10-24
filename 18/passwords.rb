
    @a = ""
    @check_prog = false

    def inner_p        
        print "Write your password for a check on security (input enter what cloce programm): "        
        @a = gets.chomp!
        exit if @a==""
        check
    end

    def check
        input = File.open("passwords.txt", "r")
        while (line=input.gets)
            
            if line.chomp == @a
                p "#{line.chomp}  -   #{@a.chomp}"
                @check_prog = true 
                break
            end
                        
        end
        write_resault
    end

    def write_resault
        if @check_prog
            p "You password is not have fine security"
        else
            p "You password is fine"
        end
        inner_p
    end

    

    inner_p
    

