def is_a_valid_email?(email)
(email =~ /^(([A-Za-z0-9]*\.+*_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\+)|([A-Za-z0-9]+\+))*[A-Z‌​a-z0-9]+@{1}((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,4}$/i)
end


is_a_valid_email? "deinekomisha1990@gmail.com"

# p "dsfsfsdf is #{is_a_valid_email?("dsfsfsdf")}"
# p "deinekomisha1990@gmail.com is #{is_a_valid_email?("deinekomisha1990@gmail.com")}"