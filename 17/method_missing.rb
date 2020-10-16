class So 
    def method_missing name 
        p "Call undefaid method #{name}"
    end
end

s = So.new

s.abra_kadabra