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

    f = File.open 'views/user.erb', 'a'
    f.write "User #{@user_name}, phone: #{@phone}, Date and time #{@date_time} <br/>   "
    f.close

    erb :message
end

get '/admin' do
    erb :admin    
end

post '/admin' do
    @login = params[:login]
    @password = params[:password]
    
    if @login=="misha" && @password =="qwerty"
        erb :user
    else
        @valid="not enter, try you password - [#{@password}] and login - [#{[@login]}"
    end
end