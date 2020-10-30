require 'sinatra'

get '/' do
    erb :index
end

post "/" do
    @user_name = params[:user_name]
    @phone = params[:phone]
    @date_time = params[:date_time]

    @title = 'thenk You'
    @message = "deer #{@user_name}, we`ll be witing for you at #{@date_time}"

    f = File.open 'user.txt', 'a'
    f.write "User #{@user_name}, phone: #{@phone}, Date and time #{@date_time}  ===========   "
    f.close

    erb :message
end