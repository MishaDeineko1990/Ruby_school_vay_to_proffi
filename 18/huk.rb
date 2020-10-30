require "net/http"
require "uri"

def is_wrong_password? pasw
    uri = URI.parse 'http://192.168.0.1'
    response = Net::HTTP.post_form(uri, :login=> "admin", :password => pasw).body
    # response.include? "school"
    p response
end

p is_wrong_password? "123456"
